
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sb ;


 char* buffer_limit ;
 int bump_line_counters () ;
 char* find_end_of_line (char*,int ) ;
 int flag_m68k_mri ;
 char* input_line_pointer ;
 char* input_scrub_next_buffer (char**) ;
 int sb_add_buffer (int *,char*,int) ;

__attribute__((used)) static int
get_line_sb (sb *line)
{
  char *eol;

  if (input_line_pointer[-1] == '\n')
    bump_line_counters ();

  if (input_line_pointer >= buffer_limit)
    {
      buffer_limit = input_scrub_next_buffer (&input_line_pointer);
      if (buffer_limit == 0)
 return 0;
    }

  eol = find_end_of_line (input_line_pointer, flag_m68k_mri);
  sb_add_buffer (line, input_line_pointer, eol - input_line_pointer);
  input_line_pointer = eol;






  return *input_line_pointer++;
}
