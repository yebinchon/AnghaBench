
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_PURPOSE (scalar_t__) ;
 int TREE_STRING_POINTER (scalar_t__) ;
 int error (char*,int ) ;
 scalar_t__ simple_cst_equal (scalar_t__,scalar_t__) ;

__attribute__((used)) static bool
check_unique_operand_names (tree outputs, tree inputs)
{
  tree i, j;

  for (i = outputs; i ; i = TREE_CHAIN (i))
    {
      tree i_name = TREE_PURPOSE (TREE_PURPOSE (i));
      if (! i_name)
 continue;

      for (j = TREE_CHAIN (i); j ; j = TREE_CHAIN (j))
 if (simple_cst_equal (i_name, TREE_PURPOSE (TREE_PURPOSE (j))))
   goto failure;
    }

  for (i = inputs; i ; i = TREE_CHAIN (i))
    {
      tree i_name = TREE_PURPOSE (TREE_PURPOSE (i));
      if (! i_name)
 continue;

      for (j = TREE_CHAIN (i); j ; j = TREE_CHAIN (j))
 if (simple_cst_equal (i_name, TREE_PURPOSE (TREE_PURPOSE (j))))
   goto failure;
      for (j = outputs; j ; j = TREE_CHAIN (j))
 if (simple_cst_equal (i_name, TREE_PURPOSE (TREE_PURPOSE (j))))
   goto failure;
    }

  return 1;

 failure:
  error ("duplicate asm operand name %qs",
  TREE_STRING_POINTER (TREE_PURPOSE (TREE_PURPOSE (i))));
  return 0;
}
