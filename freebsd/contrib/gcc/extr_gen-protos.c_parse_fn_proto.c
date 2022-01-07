
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fn_decl {char* fname; char* rtype; char* params; } ;


 int ISALNUM (unsigned char) ;
 scalar_t__ ISIDNUM (char) ;
 int fprintf (int ,char*,char*,...) ;
 char* progname ;
 int stderr ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ verbose ;

__attribute__((used)) static int
parse_fn_proto (char *start, char *end, struct fn_decl *fn)
{
  char *ptr;
  int param_nesting = 1;
  char *param_start, *param_end, *decl_start, *name_start, *name_end;

  ptr = end - 1;
  while (*ptr == ' ' || *ptr == '\t') ptr--;
  if (*ptr-- != ';')
    {
      fprintf (stderr, "Funny input line: %s\n", start);
      return 0;
    }
  while (*ptr == ' ' || *ptr == '\t') ptr--;
  if (*ptr != ')')
    {
      fprintf (stderr, "Funny input line: %s\n", start);
      return 0;
    }
  param_end = ptr;
  for (;;)
    {
      int c = *--ptr;
      if (c == '(' && --param_nesting == 0)
 break;
      else if (c == ')')
 param_nesting++;
    }
  param_start = ptr+1;

  ptr--;
  while (*ptr == ' ' || *ptr == '\t') ptr--;

  if (!ISALNUM ((unsigned char)*ptr))
    {
      if (verbose)
 fprintf (stderr, "%s: Can't handle this complex prototype: %s\n",
   progname, start);
      return 0;
    }
  name_end = ptr+1;

  while (ISIDNUM (*ptr))
    --ptr;
  name_start = ptr+1;
  while (*ptr == ' ' || *ptr == '\t') ptr--;
  ptr[1] = 0;
  *param_end = 0;
  *name_end = 0;

  decl_start = start;
  if (strncmp (decl_start, "typedef ", 8) == 0)
    return 0;
  if (strncmp (decl_start, "extern ", 7) == 0)
    decl_start += 7;

  fn->fname = name_start;
  fn->rtype = decl_start;
  fn->params = param_start;
  return 1;
}
