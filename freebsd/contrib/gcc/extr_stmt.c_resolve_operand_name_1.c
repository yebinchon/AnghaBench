
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_PURPOSE (scalar_t__) ;
 char* TREE_STRING_POINTER (scalar_t__) ;
 int error (char*,...) ;
 int gcc_assert (int) ;
 int memmove (char*,char*,scalar_t__) ;
 int sprintf (char*,char*,int) ;
 char* strchr (char*,char) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,size_t) ;

__attribute__((used)) static char *
resolve_operand_name_1 (char *p, tree outputs, tree inputs)
{
  char *q;
  int op;
  tree t;
  size_t len;


  q = strchr (p, ']');
  if (!q)
    {
      error ("missing close brace for named operand");
      return strchr (p, '\0');
    }
  len = q - p - 1;


  for (op = 0, t = outputs; t ; t = TREE_CHAIN (t), op++)
    {
      tree name = TREE_PURPOSE (TREE_PURPOSE (t));
      if (name)
 {
   const char *c = TREE_STRING_POINTER (name);
   if (strncmp (c, p + 1, len) == 0 && c[len] == '\0')
     goto found;
 }
    }
  for (t = inputs; t ; t = TREE_CHAIN (t), op++)
    {
      tree name = TREE_PURPOSE (TREE_PURPOSE (t));
      if (name)
 {
   const char *c = TREE_STRING_POINTER (name);
   if (strncmp (c, p + 1, len) == 0 && c[len] == '\0')
     goto found;
 }
    }

  *q = '\0';
  error ("undefined named operand %qs", p + 1);
  op = 0;
 found:




  sprintf (p, "%d", op);
  p = strchr (p, '\0');


  gcc_assert (p <= q);


  memmove (p, q + 1, strlen (q + 1) + 1);

  return p;
}
