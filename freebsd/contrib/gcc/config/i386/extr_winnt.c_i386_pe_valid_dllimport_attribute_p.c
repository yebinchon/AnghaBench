
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TARGET_NOP_FUN_DLLIMPORT ;
 scalar_t__ TREE_CODE (int ) ;

bool
i386_pe_valid_dllimport_attribute_p (tree decl)
{
   if (TARGET_NOP_FUN_DLLIMPORT && TREE_CODE (decl) == FUNCTION_DECL)
     return 0;
   return 1;
}
