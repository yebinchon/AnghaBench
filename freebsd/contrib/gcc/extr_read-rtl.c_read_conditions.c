
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int add_c_test (char*,int) ;
 int atoi (char*) ;
 int fatal_expected_char (int *,char,int) ;
 int read_name (char*,int *) ;
 char* read_quoted_string (int *) ;
 int read_skip_spaces (int *) ;
 int validate_const_int (int *,char*) ;

__attribute__((used)) static void
read_conditions (FILE *infile, char *tmp_char)
{
  int c;

  c = read_skip_spaces (infile);
  if (c != '[')
    fatal_expected_char (infile, '[', c);

  while ( (c = read_skip_spaces (infile)) != ']')
    {
      char *expr;
      int value;

      if (c != '(')
 fatal_expected_char (infile, '(', c);

      read_name (tmp_char, infile);
      validate_const_int (infile, tmp_char);
      value = atoi (tmp_char);

      c = read_skip_spaces (infile);
      if (c != '"')
 fatal_expected_char (infile, '"', c);
      expr = read_quoted_string (infile);

      c = read_skip_spaces (infile);
      if (c != ')')
 fatal_expected_char (infile, ')', c);

      add_c_test (expr, value);
    }
  c = read_skip_spaces (infile);
  if (c != ')')
    fatal_expected_char (infile, ')', c);
}
