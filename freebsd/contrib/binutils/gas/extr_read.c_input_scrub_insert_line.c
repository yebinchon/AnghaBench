
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sb ;


 int buffer_limit ;
 int input_line_pointer ;
 int input_scrub_include_sb (int *,int ,int ) ;
 int input_scrub_next_buffer (int *) ;
 int sb_add_string (int *,char const*) ;
 int sb_kill (int *) ;
 int sb_new (int *) ;

void
input_scrub_insert_line (const char *line)
{
  sb newline;
  sb_new (&newline);
  sb_add_string (&newline, line);
  input_scrub_include_sb (&newline, input_line_pointer, 0);
  sb_kill (&newline);
  buffer_limit = input_scrub_next_buffer (&input_line_pointer);
}
