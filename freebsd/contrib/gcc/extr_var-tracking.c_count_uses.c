
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
typedef int basic_block ;
struct TYPE_2__ {int n_mos; } ;


 int BLOCK_FOR_INSN (int ) ;
 scalar_t__ FIRST_PSEUDO_REGISTER ;
 int INT_MEM_OFFSET (int ) ;
 scalar_t__ MEM_EXPR (int ) ;
 scalar_t__ MEM_P (int ) ;
 scalar_t__ REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 TYPE_1__* VTI (int ) ;
 int gcc_assert (int) ;
 scalar_t__ offset_valid_for_tracked_p (int ) ;
 scalar_t__ track_expr_p (scalar_t__) ;

__attribute__((used)) static int
count_uses (rtx *loc, void *insn)
{
  basic_block bb = BLOCK_FOR_INSN ((rtx) insn);

  if (REG_P (*loc))
    {
      gcc_assert (REGNO (*loc) < FIRST_PSEUDO_REGISTER);
      VTI (bb)->n_mos++;
    }
  else if (MEM_P (*loc)
    && MEM_EXPR (*loc)
    && track_expr_p (MEM_EXPR (*loc))
    && offset_valid_for_tracked_p (INT_MEM_OFFSET (*loc)))
    {
      VTI (bb)->n_mos++;
    }

  return 0;
}
