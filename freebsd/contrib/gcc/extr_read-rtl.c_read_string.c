
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fatal_expected_char (int *,char,int) ;
 int fatal_with_file_and_line (int *,char*,int) ;
 int obstack_1grow (int *,char) ;
 char* read_braced_string (int *) ;
 char* read_quoted_string (int *) ;
 int read_rtx_filename ;
 int read_rtx_lineno ;
 int read_skip_spaces (int *) ;
 int set_rtx_ptr_loc (char*,int ,int) ;
 int string_obstack ;

__attribute__((used)) static char *
read_string (FILE *infile, int star_if_braced)
{
  char *stringbuf;
  int saw_paren = 0;
  int c, old_lineno;

  c = read_skip_spaces (infile);
  if (c == '(')
    {
      saw_paren = 1;
      c = read_skip_spaces (infile);
    }

  old_lineno = read_rtx_lineno;
  if (c == '"')
    stringbuf = read_quoted_string (infile);
  else if (c == '{')
    {
      if (star_if_braced)
 obstack_1grow (&string_obstack, '*');
      stringbuf = read_braced_string (infile);
    }
  else
    fatal_with_file_and_line (infile, "expected `\"' or `{', found `%c'", c);

  if (saw_paren)
    {
      c = read_skip_spaces (infile);
      if (c != ')')
 fatal_expected_char (infile, ')', c);
    }

  set_rtx_ptr_loc (stringbuf, read_rtx_filename, old_lineno);
  return stringbuf;
}
