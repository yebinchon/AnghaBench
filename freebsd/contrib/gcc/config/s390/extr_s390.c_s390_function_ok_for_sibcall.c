
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int (* binds_local_p ) (scalar_t__) ;} ;


 int TARGET_64BIT ;
 scalar_t__ TARGET_TPF_PROFILING ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ flag_pic ;
 scalar_t__ s390_call_saved_register_used (scalar_t__) ;
 int stub1 (scalar_t__) ;
 TYPE_1__ targetm ;

__attribute__((used)) static bool
s390_function_ok_for_sibcall (tree decl, tree exp)
{

  if (TARGET_TPF_PROFILING)
    return 0;



  if (!TARGET_64BIT && flag_pic && decl && !targetm.binds_local_p (decl))
    return 0;




  if (TREE_OPERAND (exp, 1)
      && s390_call_saved_register_used (TREE_OPERAND (exp, 1)))
      return 0;

  return 1;
}
