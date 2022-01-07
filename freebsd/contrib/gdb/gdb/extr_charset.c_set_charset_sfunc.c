
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;
struct charset {int dummy; } ;


 int check_valid_host_charset (struct charset*) ;
 int host_charset_name ;
 struct charset* lookup_charset_or_error (int ) ;
 int set_host_and_target_charsets (struct charset*,struct charset*) ;
 int target_charset_name ;

__attribute__((used)) static void
set_charset_sfunc (char *charset, int from_tty, struct cmd_list_element *c)
{
  struct charset *cs = lookup_charset_or_error (host_charset_name);
  check_valid_host_charset (cs);

  target_charset_name = host_charset_name;
  set_host_and_target_charsets (cs, cs);
}
