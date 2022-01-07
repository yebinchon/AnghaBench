
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buffer_limit ;
 int input_line_pointer ;
 int input_scrub_include_file (char*,int ) ;
 int input_scrub_next_buffer (int *) ;

void
input_scrub_insert_file (char *path)
{
  input_scrub_include_file (path, input_line_pointer);
  buffer_limit = input_scrub_next_buffer (&input_line_pointer);
}
