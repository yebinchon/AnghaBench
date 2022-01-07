
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chunksize ;
 int cond_obstack ;
 scalar_t__ flag_mri ;
 int* is_end_of_line ;
 int* lex_type ;
 char* line_separator_chars ;
 int notes ;
 int obj_read_begin_hook () ;
 int obstack_begin (int *,int ) ;
 int pobegin () ;

void
read_begin (void)
{
  const char *p;

  pobegin ();
  obj_read_begin_hook ();



  obstack_begin (&notes, chunksize);
  obstack_begin (&cond_obstack, chunksize);


  for (p = line_separator_chars; *p; p++)
    is_end_of_line[(unsigned char) *p] = 1;


  if (flag_mri)
    lex_type['?'] = 3;
}
