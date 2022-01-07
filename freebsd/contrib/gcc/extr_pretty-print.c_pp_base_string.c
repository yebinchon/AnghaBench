
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pretty_printer ;


 int pp_maybe_wrap_text (int *,char const*,char const*) ;
 int strlen (char const*) ;

void
pp_base_string (pretty_printer *pp, const char *str)
{
  pp_maybe_wrap_text (pp, str, str + (str ? strlen (str) : 0));
}
