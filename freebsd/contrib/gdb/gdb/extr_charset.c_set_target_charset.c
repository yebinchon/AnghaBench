
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charset {int dummy; } ;


 int current_host_charset ;
 struct charset* lookup_charset_or_error (char const*) ;
 int set_host_and_target_charsets (int ,struct charset*) ;

__attribute__((used)) static void
set_target_charset (const char *charset)
{
  struct charset *cs = lookup_charset_or_error (charset);

  set_host_and_target_charsets (current_host_charset, cs);
}
