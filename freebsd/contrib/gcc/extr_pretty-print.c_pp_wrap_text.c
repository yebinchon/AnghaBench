
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pretty_printer ;


 scalar_t__ ISBLANK (char const) ;
 int pp_append_text (int *,char const*,char const*) ;
 int pp_is_wrapping_line (int *) ;
 int pp_newline (int *) ;
 int pp_remaining_character_count_for_line (int *) ;
 int pp_space (int *) ;

__attribute__((used)) static void
pp_wrap_text (pretty_printer *pp, const char *start, const char *end)
{
  bool wrapping_line = pp_is_wrapping_line (pp);

  while (start != end)
    {

      {
 const char *p = start;
 while (p != end && !ISBLANK (*p) && *p != '\n')
   ++p;
 if (wrapping_line
            && p - start >= pp_remaining_character_count_for_line (pp))
   pp_newline (pp);
 pp_append_text (pp, start, p);
 start = p;
      }

      if (start != end && ISBLANK (*start))
 {
   pp_space (pp);
   ++start;
 }
      if (start != end && *start == '\n')
 {
   pp_newline (pp);
   ++start;
 }
    }
}
