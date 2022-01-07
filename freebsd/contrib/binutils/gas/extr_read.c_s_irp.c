
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sb ;


 int as_bad_where (char*,unsigned int,char*,char const*) ;
 int as_where (char**,unsigned int*) ;
 int buffer_limit ;
 char* expand_irp (int,int ,int *,int *,int ) ;
 char* find_end_of_line (char*,int ) ;
 int get_line_sb ;
 char* input_line_pointer ;
 int input_scrub_include_sb (int *,char*,int) ;
 int input_scrub_next_buffer (char**) ;
 int sb_add_buffer (int *,char*,int) ;
 int sb_kill (int *) ;
 int sb_new (int *) ;

void
s_irp (int irpc)
{
  char *file, *eol;
  unsigned int line;
  sb s;
  const char *err;
  sb out;

  as_where (&file, &line);

  sb_new (&s);
  eol = find_end_of_line (input_line_pointer, 0);
  sb_add_buffer (&s, input_line_pointer, eol - input_line_pointer);
  input_line_pointer = eol;

  sb_new (&out);

  err = expand_irp (irpc, 0, &s, &out, get_line_sb);
  if (err != ((void*)0))
    as_bad_where (file, line, "%s", err);

  sb_kill (&s);

  input_scrub_include_sb (&out, input_line_pointer, 1);
  sb_kill (&out);
  buffer_limit = input_scrub_next_buffer (&input_line_pointer);
}
