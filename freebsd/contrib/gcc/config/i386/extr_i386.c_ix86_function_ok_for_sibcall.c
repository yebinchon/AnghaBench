
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int rtx ;
struct TYPE_6__ {TYPE_1__* machine; scalar_t__ decl; } ;
struct TYPE_5__ {int (* binds_local_p ) (scalar_t__) ;} ;
struct TYPE_4__ {scalar_t__ force_align_arg_pointer; } ;


 scalar_t__ DECL_DLLIMPORT_P (scalar_t__) ;
 scalar_t__ DECL_RESULT (scalar_t__) ;
 scalar_t__ POINTER_TYPE_P (scalar_t__) ;
 scalar_t__ STACK_REG_P (int ) ;
 int TARGET_64BIT ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ VOID_TYPE_P (scalar_t__) ;
 TYPE_3__* cfun ;
 scalar_t__ flag_pic ;
 int ix86_function_regparm (scalar_t__,int *) ;
 int ix86_function_value (scalar_t__,scalar_t__,int) ;
 int rtx_equal_p (int ,int ) ;
 int stub1 (scalar_t__) ;
 TYPE_2__ targetm ;

__attribute__((used)) static bool
ix86_function_ok_for_sibcall (tree decl, tree exp)
{
  tree func;
  rtx a, b;




  if (!TARGET_64BIT && flag_pic && (!decl || !targetm.binds_local_p (decl)))
    return 0;

  if (decl)
    func = decl;
  else
    {
      func = TREE_TYPE (TREE_OPERAND (exp, 0));
      if (POINTER_TYPE_P (func))
        func = TREE_TYPE (func);
    }
  a = ix86_function_value (TREE_TYPE (exp), func, 0);
  b = ix86_function_value (TREE_TYPE (DECL_RESULT (cfun->decl)),
      cfun->decl, 0);
  if (STACK_REG_P (a) || STACK_REG_P (b))
    {
      if (!rtx_equal_p (a, b))
 return 0;
    }
  else if (VOID_TYPE_P (TREE_TYPE (DECL_RESULT (cfun->decl))))
    ;
  else if (!rtx_equal_p (a, b))
    return 0;




  if (!decl && !TARGET_64BIT)
    {
      tree type;


      type = TREE_OPERAND (exp, 0);
      type = TREE_TYPE (type);
      type = TREE_TYPE (type);

      if (ix86_function_regparm (type, ((void*)0)) >= 3)
 {


   return 0;
 }
    }
  if (cfun->machine->force_align_arg_pointer)
    return 0;


  return 1;
}
