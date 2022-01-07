
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* la_word_break_characters ) () ;} ;


 char** complete_line (char const*,char*,int) ;
 TYPE_1__* current_language ;
 int rl_completer_word_break_characters ;
 int stub1 () ;
 int xfree (char**) ;

__attribute__((used)) static char *
line_completion_function (const char *text, int matches, char *line_buffer, int point)
{
  static char **list = (char **) ((void*)0);
  static int index;
  char *output = ((void*)0);

  if (matches == 0)
    {




      if (list)
 {


   xfree (list);
 }
      index = 0;
      list = complete_line (text, line_buffer, point);
    }







  if (list)
    {
      output = list[index];
      if (output)
 {
   index++;
 }
    }
  return (output);
}
