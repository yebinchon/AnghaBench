
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {scalar_t__ (* arg_partial_bytes ) (int *,int,int *,int) ;} ;
struct TYPE_4__ {TYPE_1__ calls; } ;
typedef int CUMULATIVE_ARGS ;


 int FUNCTION_ARG (int ,int,int ,int) ;
 int FUNCTION_ARG_ADVANCE (int ,int,int ,int) ;
 int INIT_CUMULATIVE_ARGS (int ,int ,int ,int ,int) ;
 int NULL_RTX ;
 int NULL_TREE ;
 scalar_t__ PUSH_ARGS ;
 int REG_P (int ) ;
 scalar_t__ REG_PARM_STACK_SPACE (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_ARG_TYPES (int ) ;
 int TYPE_MODE (int ) ;
 scalar_t__ emit_block_move_libcall_fn (int) ;
 scalar_t__ stub1 (int *,int,int *,int) ;
 TYPE_2__ targetm ;
 scalar_t__ void_list_node ;

__attribute__((used)) static bool
block_move_libcall_safe_for_call_parm (void)
{

  if (PUSH_ARGS)
    return 1;
  {
    CUMULATIVE_ARGS args_so_far;
    tree fn, arg;

    fn = emit_block_move_libcall_fn (0);
    INIT_CUMULATIVE_ARGS (args_so_far, TREE_TYPE (fn), NULL_RTX, 0, 3);

    arg = TYPE_ARG_TYPES (TREE_TYPE (fn));
    for ( ; arg != void_list_node ; arg = TREE_CHAIN (arg))
      {
 enum machine_mode mode = TYPE_MODE (TREE_VALUE (arg));
 rtx tmp = FUNCTION_ARG (args_so_far, mode, NULL_TREE, 1);
 if (!tmp || !REG_P (tmp))
   return 0;
 if (targetm.calls.arg_partial_bytes (&args_so_far, mode, ((void*)0), 1))
   return 0;
 FUNCTION_ARG_ADVANCE (args_so_far, mode, NULL_TREE, 1);
      }
  }
  return 1;
}
