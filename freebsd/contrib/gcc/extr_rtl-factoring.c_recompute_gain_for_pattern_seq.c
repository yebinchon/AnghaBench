
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef TYPE_1__* pattern_seq ;
typedef TYPE_1__* matching_seq ;
struct TYPE_5__ {int abstracted_length; int gain; int matching_length; scalar_t__ cost; scalar_t__ insn; int link_reg; struct TYPE_5__* next_matching_seq; struct TYPE_5__* matching_seqs; scalar_t__ idx; } ;
typedef int HARD_REG_SET ;


 scalar_t__ CALL_P (scalar_t__) ;
 int CLEAR_HARD_REG_BIT (int ,int) ;
 int FIRST_PSEUDO_REGISTER ;
 int MEM ;
 int NULL_RTX ;
 int Pmode ;
 int RECOMPUTE_COST (TYPE_1__*) ;
 int REGNO_OK_FOR_INDIRECT_JUMP_P (int,int ) ;
 int REGNO_REG_CLASS (int) ;
 int SCRATCH ;
 int SET_HARD_REG_SET (int ) ;
 scalar_t__ TEST_HARD_REG_BIT (int ,int) ;
 int VOIDmode ;
 int base_reg_class (int ,int ,int ) ;
 scalar_t__* call_used_regs ;
 int clear_regs_live_in_seq (int *,scalar_t__,int) ;
 scalar_t__* fixed_regs ;
 int gen_rtx_REG (int ,int) ;
 int ok_for_base_p_1 (int,int ,int ,int ) ;
 scalar_t__ prev_insn_in_block (scalar_t__) ;
 int reg_class_subset_p (int ,int ) ;
 int * regs_ever_live ;
 scalar_t__ seq_call_cost ;
 scalar_t__ seq_jump_cost ;
 scalar_t__ seq_return_cost ;

__attribute__((used)) static void
recompute_gain_for_pattern_seq (pattern_seq pseq)
{
  matching_seq mseq;
  rtx x;
  int i;
  int hascall;
  HARD_REG_SET linkregs;


  SET_HARD_REG_SET (linkregs);
  pseq->link_reg = NULL_RTX;
  pseq->abstracted_length = 0;

  pseq->gain = -(seq_call_cost - seq_jump_cost + seq_return_cost);





  for (mseq = pseq->matching_seqs; mseq; mseq = mseq->next_matching_seq)
    {

      if (mseq->next_matching_seq)
        mseq->abstracted_length = (int)(mseq->next_matching_seq->idx -
                                        mseq->idx);
      else
        mseq->abstracted_length = mseq->matching_length;

      if (mseq->abstracted_length > mseq->matching_length)
        mseq->abstracted_length = mseq->matching_length;


      RECOMPUTE_COST (mseq);




      if (mseq->cost > seq_call_cost)
        {
          clear_regs_live_in_seq (&linkregs, mseq->insn,
                                  mseq->abstracted_length);
          if (mseq->abstracted_length > pseq->abstracted_length)
            pseq->abstracted_length = mseq->abstracted_length;
        }
    }



  for (mseq = pseq->matching_seqs; mseq; mseq = mseq->next_matching_seq)
    {
      x = pseq->insn;
      for (i = 0; (i < pseq->abstracted_length) && (x != mseq->insn); i++)
        x = prev_insn_in_block (x);
      pseq->abstracted_length = i;
    }


  RECOMPUTE_COST (pseq);


  if (pseq->cost <= seq_call_cost)
  {
    pseq->gain = -1;
    return;
  }


  for (mseq = pseq->matching_seqs; mseq; mseq = mseq->next_matching_seq)
    {
      if (mseq->abstracted_length > pseq->abstracted_length)
        {
          mseq->abstracted_length = pseq->abstracted_length;
          RECOMPUTE_COST (mseq);
        }

      if (mseq->cost > seq_call_cost)
        pseq->gain += mseq->cost - seq_call_cost;
    }


  if (pseq->gain <= 0)
    return;



  clear_regs_live_in_seq (&linkregs, pseq->insn, pseq->abstracted_length);


  hascall = 0;
  x = pseq->insn;
  for (i = 0; i < pseq->abstracted_length; i++)
    {
      if (CALL_P (x))
        {
          hascall = 1;
          break;
        }
      x = prev_insn_in_block (x);
    }
  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    if (fixed_regs[i]



        || (!ok_for_base_p_1 (i, Pmode, MEM, SCRATCH))
        || (!reg_class_subset_p (REGNO_REG_CLASS (i),
     base_reg_class (VOIDmode, MEM, SCRATCH)))

        || (hascall && call_used_regs[i])
        || (!call_used_regs[i] && !regs_ever_live[i]))
      CLEAR_HARD_REG_BIT (linkregs, i);


  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    if (TEST_HARD_REG_BIT (linkregs, i))
      {
        pseq->link_reg = gen_rtx_REG (Pmode, i);
        break;
      }



  if (!pseq->link_reg)
    pseq->gain = 0;
}
