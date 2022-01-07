
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charset {int dummy; } ;


 int check_valid_host_charset (struct charset*) ;
 int current_target_charset ;
 struct charset* lookup_charset_or_error (char const*) ;
 int set_host_and_target_charsets (struct charset*,int ) ;

__attribute__((used)) static void
set_host_charset (const char *charset)
{
  struct charset *cs = lookup_charset_or_error (charset);
  check_valid_host_charset (cs);
  set_host_and_target_charsets (cs, current_target_charset);
}
