
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {scalar_t__ (* promote_function_return ) (int ) ;} ;
struct TYPE_4__ {TYPE_1__ calls; } ;


 int DECL_MODE (int ) ;
 int DECL_RESULT (int ) ;
 int DECL_RTL (int ) ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ PARALLEL ;
 int TREE_TYPE (int ) ;
 int TYPE_UNSIGNED (int ) ;
 int convert_modes (int,int,int ,int) ;
 int current_function_decl ;
 int emit_group_load (int ,int ,int ,int ) ;
 int emit_move_insn (int ,int ) ;
 int expand_null_return_1 () ;
 int int_size_in_bytes (int ) ;
 int promote_mode (int ,int,int*,int) ;
 scalar_t__ stub1 (int ) ;
 TYPE_2__ targetm ;

__attribute__((used)) static void
expand_value_return (rtx val)
{



  rtx return_reg = DECL_RTL (DECL_RESULT (current_function_decl));
  if (return_reg != val)
    {
      tree type = TREE_TYPE (DECL_RESULT (current_function_decl));
      if (targetm.calls.promote_function_return (TREE_TYPE (current_function_decl)))
      {
 int unsignedp = TYPE_UNSIGNED (type);
 enum machine_mode old_mode
   = DECL_MODE (DECL_RESULT (current_function_decl));
 enum machine_mode mode
   = promote_mode (type, old_mode, &unsignedp, 1);

 if (mode != old_mode)
   val = convert_modes (mode, old_mode, val, unsignedp);
      }
      if (GET_CODE (return_reg) == PARALLEL)
 emit_group_load (return_reg, val, type, int_size_in_bytes (type));
      else
 emit_move_insn (return_reg, val);
    }

  expand_null_return_1 ();
}
