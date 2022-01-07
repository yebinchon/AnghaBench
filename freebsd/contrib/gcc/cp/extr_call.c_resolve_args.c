
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ VOID_TYPE_P (int ) ;
 int error (char*) ;
 scalar_t__ error_mark_node ;
 scalar_t__ error_operand_p (scalar_t__) ;
 scalar_t__ invalid_nonstatic_memfn_p (scalar_t__) ;

__attribute__((used)) static tree
resolve_args (tree args)
{
  tree t;
  for (t = args; t; t = TREE_CHAIN (t))
    {
      tree arg = TREE_VALUE (t);

      if (error_operand_p (arg))
 return error_mark_node;
      else if (VOID_TYPE_P (TREE_TYPE (arg)))
 {
   error ("invalid use of void expression");
   return error_mark_node;
 }
      else if (invalid_nonstatic_memfn_p (arg))
 return error_mark_node;
    }
  return args;
}
