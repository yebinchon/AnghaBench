
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int N_FUN ;
 int as_where (char**,unsigned int*) ;
 int asprintf (char**,char*,char const*,int ,unsigned int,char const*) ;
 int current_function_label ;
 int free (char*) ;
 int in_dot_func_p ;
 char* input_line_pointer ;
 int s_stab (char) ;
 int xstrdup (char const*) ;

void
stabs_generate_asm_func (const char *funcname, const char *startlabname)
{
  static int void_emitted_p;
  char *hold = input_line_pointer;
  char *buf;
  char *file;
  unsigned int lineno;

  if (! void_emitted_p)
    {
      input_line_pointer = "\"void:t1=1\",128,0,0,0";
      s_stab ('s');
      void_emitted_p = 1;
    }

  as_where (&file, &lineno);
  asprintf (&buf, "\"%s:F1\",%d,0,%d,%s",
     funcname, N_FUN, lineno + 1, startlabname);
  input_line_pointer = buf;
  s_stab ('s');
  free (buf);

  input_line_pointer = hold;
  current_function_label = xstrdup (startlabname);
  in_dot_func_p = 1;
}
