
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int MAX_RECOG_ALTERNATIVES ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_PURPOSE (scalar_t__) ;
 char const* TREE_STRING_POINTER (int ) ;
 int TREE_VALUE (scalar_t__) ;
 int error (char*) ;
 int n_occurrences (char,char const*) ;

__attribute__((used)) static bool
check_operand_nalternatives (tree outputs, tree inputs)
{
  if (outputs || inputs)
    {
      tree tmp = TREE_PURPOSE (outputs ? outputs : inputs);
      int nalternatives
 = n_occurrences (',', TREE_STRING_POINTER (TREE_VALUE (tmp)));
      tree next = inputs;

      if (nalternatives + 1 > MAX_RECOG_ALTERNATIVES)
 {
   error ("too many alternatives in %<asm%>");
   return 0;
 }

      tmp = outputs;
      while (tmp)
 {
   const char *constraint
     = TREE_STRING_POINTER (TREE_VALUE (TREE_PURPOSE (tmp)));

   if (n_occurrences (',', constraint) != nalternatives)
     {
       error ("operand constraints for %<asm%> differ "
       "in number of alternatives");
       return 0;
     }

   if (TREE_CHAIN (tmp))
     tmp = TREE_CHAIN (tmp);
   else
     tmp = next, next = 0;
 }
    }

  return 1;
}
