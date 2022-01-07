
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pretty_printer ;


 int pp_append_text (int *,char const*,char const*) ;
 scalar_t__ pp_is_wrapping_line (int *) ;
 int pp_wrap_text (int *,char const*,char const*) ;

__attribute__((used)) static inline void
pp_maybe_wrap_text (pretty_printer *pp, const char *start, const char *end)
{
  if (pp_is_wrapping_line (pp))
    pp_wrap_text (pp, start, end);
  else
    pp_append_text (pp, start, end);
}
