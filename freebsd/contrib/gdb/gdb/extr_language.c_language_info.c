
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int case_sensitive ;
 scalar_t__ current_language ;
 scalar_t__ expected_language ;
 int language ;
 int printf_unfiltered (char*,int ) ;
 int range ;
 int show_case_command (char*,int) ;
 int show_language_command (char*,int) ;
 int show_range_command (char*,int) ;
 int show_type_command (char*,int) ;
 int type ;

void
language_info (int quietly)
{
  if (quietly && expected_language == current_language)
    return;

  expected_language = current_language;
  printf_unfiltered ("Current language:  %s\n", language);
  show_language_command ((char *) 0, 1);

  if (!quietly)
    {
      printf_unfiltered ("Type checking:     %s\n", type);
      show_type_command ((char *) 0, 1);
      printf_unfiltered ("Range checking:    %s\n", range);
      show_range_command ((char *) 0, 1);
      printf_unfiltered ("Case sensitivity:  %s\n", case_sensitive);
      show_case_command ((char *) 0, 1);
    }
}
