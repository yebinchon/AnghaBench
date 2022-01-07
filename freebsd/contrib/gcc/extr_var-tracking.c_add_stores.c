
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ rtx ;
struct TYPE_4__ {scalar_t__ loc; } ;
struct TYPE_5__ {void* insn; TYPE_1__ u; void* type; } ;
typedef TYPE_2__ micro_operation ;
typedef int basic_block ;
struct TYPE_6__ {int n_mos; TYPE_2__* mos; } ;


 int BLOCK_FOR_INSN (scalar_t__) ;
 scalar_t__ CLOBBER ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int INT_MEM_OFFSET (scalar_t__) ;
 scalar_t__ MEM_EXPR (scalar_t__) ;
 scalar_t__ MEM_P (scalar_t__) ;
 void* MO_CLOBBER ;
 void* MO_COPY ;
 void* MO_SET ;
 void* NEXT_INSN (scalar_t__) ;
 scalar_t__ REG_EXPR (scalar_t__) ;
 int REG_OFFSET (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ SET ;
 scalar_t__ SET_DEST (scalar_t__) ;
 int SET_SRC (scalar_t__) ;
 TYPE_3__* VTI (int ) ;
 scalar_t__ offset_valid_for_tracked_p (int ) ;
 scalar_t__ same_variable_part_p (int ,scalar_t__,int ) ;
 scalar_t__ track_expr_p (scalar_t__) ;

__attribute__((used)) static void
add_stores (rtx loc, rtx expr, void *insn)
{
  if (REG_P (loc))
    {
      basic_block bb = BLOCK_FOR_INSN ((rtx) insn);
      micro_operation *mo = VTI (bb)->mos + VTI (bb)->n_mos++;

      if (GET_CODE (expr) == CLOBBER
   || !(REG_EXPR (loc)
        && track_expr_p (REG_EXPR (loc))
        && offset_valid_for_tracked_p (REG_OFFSET (loc))))
 mo->type = MO_CLOBBER;
      else if (GET_CODE (expr) == SET
        && SET_DEST (expr) == loc
        && same_variable_part_p (SET_SRC (expr),
     REG_EXPR (loc),
     REG_OFFSET (loc)))
 mo->type = MO_COPY;
      else
 mo->type = MO_SET;
      mo->u.loc = loc;
      mo->insn = NEXT_INSN ((rtx) insn);
    }
  else if (MEM_P (loc)
    && MEM_EXPR (loc)
    && track_expr_p (MEM_EXPR (loc))
    && offset_valid_for_tracked_p (INT_MEM_OFFSET (loc)))
    {
      basic_block bb = BLOCK_FOR_INSN ((rtx) insn);
      micro_operation *mo = VTI (bb)->mos + VTI (bb)->n_mos++;

      if (GET_CODE (expr) == CLOBBER)
 mo->type = MO_CLOBBER;
      else if (GET_CODE (expr) == SET
        && SET_DEST (expr) == loc
        && same_variable_part_p (SET_SRC (expr),
     MEM_EXPR (loc),
     INT_MEM_OFFSET (loc)))
 mo->type = MO_COPY;
      else
 mo->type = MO_SET;
      mo->u.loc = loc;
      mo->insn = NEXT_INSN ((rtx) insn);
    }
}
