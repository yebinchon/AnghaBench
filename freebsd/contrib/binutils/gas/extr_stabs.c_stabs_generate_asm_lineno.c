
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FAKE_LABEL_NAME ;
 int N_SLINE ;
 int N_SOL ;
 scalar_t__ alloca (int) ;
 int as_where (char**,unsigned int*) ;
 int colon (char*) ;
 char* current_function_label ;
 int free (char*) ;
 int generate_asm_file (int ,char*) ;
 scalar_t__ in_dot_func_p ;
 char* input_line_pointer ;
 int outputting_stabs_line_debug ;
 int s_stab (char) ;
 int sprintf (char*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 char* xstrdup (char*) ;

void
stabs_generate_asm_lineno (void)
{
  static int label_count;
  char *hold;
  char *file;
  unsigned int lineno;
  char *buf;
  char sym[30];

  static unsigned int prev_lineno = -1;
  static char *prev_file = ((void*)0);






  hold = input_line_pointer;

  as_where (&file, &lineno);


  if (prev_file == ((void*)0))
    {

      prev_file = xstrdup (file);
      prev_lineno = lineno;
    }
  else if (lineno == prev_lineno
    && strcmp (file, prev_file) == 0)
    {

      return;
    }
  else
    {

      prev_lineno = lineno;
      if (strcmp (file, prev_file) != 0)
 {
   free (prev_file);
   prev_file = xstrdup (file);
 }
    }



  outputting_stabs_line_debug = 1;

  generate_asm_file (N_SOL, file);

  sprintf (sym, "%sL%d", FAKE_LABEL_NAME, label_count);
  ++label_count;

  if (in_dot_func_p)
    {
      buf = (char *) alloca (100 + strlen (current_function_label));
      sprintf (buf, "%d,0,%d,%s-%s\n", N_SLINE, lineno,
        sym, current_function_label);
    }
  else
    {
      buf = (char *) alloca (100);
      sprintf (buf, "%d,0,%d,%s\n", N_SLINE, lineno, sym);
    }
  input_line_pointer = buf;
  s_stab ('n');
  colon (sym);

  input_line_pointer = hold;
  outputting_stabs_line_debug = 0;
}
