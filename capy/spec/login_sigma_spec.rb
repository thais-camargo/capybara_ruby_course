describe 'login', :sigma do
    
    it 'login com sucesso' do
        visit 'http://172.30.4.106/sigma/loginPage'

        fill_in 'j_username', with: 'tcamargo'
        fill_in 'j_password', with: 'mudar12'

        click_button 'btConfirm3'

        login_screen = find('.userProfile')

        expect(login_screen).to have_content 'tcamargo'
        sleep 5

    end

    # it 'senha incorreta', :temp do
    #     visit 'http://172.30.4.106/sigma/loginPage'

    #     fill_in 'userId', with: 'stark'
    #     fill_in 'password', with: 'xpto123'

    #     click_button 'Login'

    #     expect(find('#flash')). to have_content 'Senha é inválida!'
    # end

    # it 'usuário não cadastrado' do 
    #     visit 'http://172.30.4.106/sigma/loginPage'

    #     fill_in 'userId', with: 'hulk'
    #     fill_in 'password', with: 'xpto123'

    #     click_button 'Login'

    # end

end