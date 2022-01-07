
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_constant {char* name; char* value; } ;
typedef int FILE ;


 int EOF ;
 int fatal_with_file_and_line (int *,char*) ;
 int getc (int *) ;
 scalar_t__ htab_find (scalar_t__,struct md_constant*) ;
 scalar_t__ md_constants ;
 int read_rtx_lineno ;
 int read_skip_spaces (int *) ;
 int strcpy (char*,char*) ;
 int ungetc (int,int *) ;

__attribute__((used)) static void
read_name (char *str, FILE *infile)
{
  char *p;
  int c;

  c = read_skip_spaces (infile);

  p = str;
  while (1)
    {
      if (c == ' ' || c == '\n' || c == '\t' || c == '\f' || c == '\r' || c == EOF)
 break;
      if (c == ':' || c == ')' || c == ']' || c == '"' || c == '/'
   || c == '(' || c == '[')
 {
   ungetc (c, infile);
   break;
 }
      *p++ = c;
      c = getc (infile);
    }
  if (p == str)
    fatal_with_file_and_line (infile, "missing name or number");
  if (c == '\n')
    read_rtx_lineno++;

  *p = 0;

  if (md_constants)
    {

      struct md_constant *def;

      p = str;
      do
 {
   struct md_constant tmp_def;

   tmp_def.name = p;
   def = (struct md_constant *) htab_find (md_constants, &tmp_def);
   if (def)
     p = def->value;
 } while (def);
      if (p != str)
 strcpy (str, p);
    }
}
