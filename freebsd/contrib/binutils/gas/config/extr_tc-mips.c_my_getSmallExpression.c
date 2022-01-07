
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int expressionS ;
typedef int bfd_reloc_code_real_type ;


 scalar_t__ HAVE_NEWABI ;
 int as_bad (char*) ;
 char* expr_end ;
 int frag_now ;
 int my_getExpression (int *,char*) ;
 scalar_t__ parse_relocation (char**,int *) ;
 int prev_reloc_op_frag ;

__attribute__((used)) static size_t
my_getSmallExpression (expressionS *ep, bfd_reloc_code_real_type *reloc,
         char *str)
{
  bfd_reloc_code_real_type reversed_reloc[3];
  size_t reloc_index, i;
  int crux_depth, str_depth;
  char *crux;





  reloc_index = -1;
  str_depth = 0;
  do
    {
      reloc_index++;
      crux = str;
      crux_depth = str_depth;



      while (*str == ' ' || *str == '\t' || *str == '(')
 if (*str++ == '(')
   str_depth++;
    }
  while (*str == '%'
  && reloc_index < (HAVE_NEWABI ? 3 : 1)
  && parse_relocation (&str, &reversed_reloc[reloc_index]));

  my_getExpression (ep, crux);
  str = expr_end;


  while (crux_depth > 0 && (*str == ')' || *str == ' ' || *str == '\t'))
    if (*str++ == ')')
      crux_depth--;

  if (crux_depth > 0)
    as_bad ("unclosed '('");

  expr_end = str;

  if (reloc_index != 0)
    {
      prev_reloc_op_frag = frag_now;
      for (i = 0; i < reloc_index; i++)
 reloc[i] = reversed_reloc[reloc_index - 1 - i];
    }

  return reloc_index;
}
