
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_source (int,int ) ;
 char* clean_text_limit ;
 int gcc_assert (int) ;
 int last_known_line_number ;
 char* last_known_line_start ;

__attribute__((used)) static const char *
seek_to_line (int n)
{
  gcc_assert (n >= last_known_line_number);

  while (n > last_known_line_number)
    {
      while (*last_known_line_start != '\n')
 check_source (++last_known_line_start < clean_text_limit, 0);
      last_known_line_start++;
      last_known_line_number++;
    }
  return last_known_line_start;
}
