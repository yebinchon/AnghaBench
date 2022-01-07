
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct propagate_block_info {int dummy; } ;
typedef scalar_t__ rtx ;
typedef int regset_head ;
typedef TYPE_3__* basic_block ;
struct TYPE_8__ {TYPE_1__* rtl; } ;
struct TYPE_9__ {TYPE_2__ il; } ;
struct TYPE_7__ {int global_live_at_end; } ;
typedef int HARD_REG_SET ;


 int AND_COMPL_HARD_REG_SET (int ,int ) ;
 scalar_t__ BB_END (TYPE_3__*) ;
 TYPE_3__* BLOCK_FOR_INSN (scalar_t__) ;
 int CLEAR_REG_SET (int *) ;
 int COPY_REG_SET (int *,int ) ;
 int INIT_REG_SET (int *) ;
 scalar_t__ INSN_P (scalar_t__) ;
 int free_propagate_block_info (struct propagate_block_info*) ;
 struct propagate_block_info* init_propagate_block_info (TYPE_3__*,int *,int *,int *,int ) ;
 scalar_t__ propagate_one_insn (struct propagate_block_info*,scalar_t__) ;
 int renumbered_reg_set_to_hard_reg_set (int *,int *) ;

__attribute__((used)) static void
clear_regs_live_in_seq (HARD_REG_SET * regs, rtx insn, int length)
{
  basic_block bb;
  regset_head live;
  HARD_REG_SET hlive;
  struct propagate_block_info *pbi;
  rtx x;
  int i;


  bb = BLOCK_FOR_INSN (insn);
  INIT_REG_SET (&live);
  COPY_REG_SET (&live, bb->il.rtl->global_live_at_end);
  pbi = init_propagate_block_info (bb, &live, ((void*)0), ((void*)0), 0);


  for (x = BB_END (bb); x != insn;)
    x = propagate_one_insn (pbi, x);


  renumbered_reg_set_to_hard_reg_set (&hlive, &live);
  AND_COMPL_HARD_REG_SET (*regs, hlive);


  for (i = 0; i < length;)
    {
      rtx prev = propagate_one_insn (pbi, x);

      if (INSN_P (x))
        {
          renumbered_reg_set_to_hard_reg_set (&hlive, &live);
          AND_COMPL_HARD_REG_SET (*regs, hlive);
          i++;
        }

      x = prev;
    }


  free_propagate_block_info (pbi);
  CLEAR_REG_SET (&live);
}
