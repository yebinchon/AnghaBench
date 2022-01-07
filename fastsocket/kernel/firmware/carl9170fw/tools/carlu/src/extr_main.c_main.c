
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_debug () ;
 int select_menu_item (char) ;
 int show_help () ;
 int strlen (char*) ;

int main(int argc, char *argv[])
{
 init_debug();

 if (argc != 2 || strlen(argv[1]) != 2 || argv[1][0] != '-')
  return show_help();

 return select_menu_item(argv[1][1]);
}
