
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* line_completion_function (char const*,int,int ,int ) ;
 int rl_line_buffer ;
 int rl_point ;

char *
readline_line_completion_function (const char *text, int matches)
{
  return line_completion_function (text, matches, rl_line_buffer, rl_point);
}
