
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int host_charset_name ;
 int set_host_charset (int ) ;

__attribute__((used)) static void
set_host_charset_sfunc (char *charset, int from_tty,
     struct cmd_list_element *c)
{
  set_host_charset (host_charset_name);
}
