
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int set_target_charset (int ) ;
 int target_charset_name ;

__attribute__((used)) static void
set_target_charset_sfunc (char *charset, int from_tty,
       struct cmd_list_element *c)
{
  set_target_charset (target_charset_name);
}
