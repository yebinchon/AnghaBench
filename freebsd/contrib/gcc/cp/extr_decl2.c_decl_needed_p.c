
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_ASSEMBLER_NAME (int ) ;
 scalar_t__ DECL_ASSEMBLER_NAME_SET_P (int ) ;
 int DECL_COMDAT (int ) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_PUBLIC (int ) ;
 scalar_t__ TREE_SYMBOL_REFERENCED (int ) ;
 scalar_t__ TREE_USED (int ) ;
 scalar_t__ VAR_DECL ;
 int at_eof ;
 int gcc_assert (int) ;

bool
decl_needed_p (tree decl)
{
  gcc_assert (TREE_CODE (decl) == VAR_DECL
       || TREE_CODE (decl) == FUNCTION_DECL);



  gcc_assert (at_eof);



  if (TREE_PUBLIC (decl) && !DECL_COMDAT (decl))
    return 1;


  if (TREE_USED (decl)
      || (DECL_ASSEMBLER_NAME_SET_P (decl)
   && TREE_SYMBOL_REFERENCED (DECL_ASSEMBLER_NAME (decl))))
      return 1;


  return 0;
}
