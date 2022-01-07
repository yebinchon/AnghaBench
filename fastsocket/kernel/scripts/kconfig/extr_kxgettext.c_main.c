
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int conf_parse (char*) ;
 int menu__xgettext () ;
 int menu_build_message_list (int ) ;
 int menu_get_root_menu (int *) ;

int main(int ac, char **av)
{
 conf_parse(av[1]);

 menu_build_message_list(menu_get_root_menu(((void*)0)));
 menu__xgettext();
 return 0;
}
