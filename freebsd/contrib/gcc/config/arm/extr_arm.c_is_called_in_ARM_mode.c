
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_ATTRIBUTES (int ) ;
 int FALSE ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TARGET_CALLEE_INTERWORKING ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_PUBLIC (int ) ;
 int TRUE ;
 int gcc_assert (int) ;
 scalar_t__ lookup_attribute (char*,int ) ;

int
is_called_in_ARM_mode (tree func)
{
  gcc_assert (TREE_CODE (func) == FUNCTION_DECL);


  if (TARGET_CALLEE_INTERWORKING && TREE_PUBLIC (func))
    return TRUE;




  return FALSE;

}
