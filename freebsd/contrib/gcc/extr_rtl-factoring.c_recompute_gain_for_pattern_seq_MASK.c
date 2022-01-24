#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
typedef  TYPE_1__* pattern_seq ;
typedef  TYPE_1__* matching_seq ;
struct TYPE_5__ {int abstracted_length; int gain; int matching_length; scalar_t__ cost; scalar_t__ insn; int /*<<< orphan*/  link_reg; struct TYPE_5__* next_matching_seq; struct TYPE_5__* matching_seqs; scalar_t__ idx; } ;
typedef  int /*<<< orphan*/  HARD_REG_SET ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FIRST_PSEUDO_REGISTER ; 
 int /*<<< orphan*/  MEM ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  SCRATCH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* call_used_regs ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 scalar_t__* fixed_regs ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * regs_ever_live ; 
 scalar_t__ seq_call_cost ; 
 scalar_t__ seq_jump_cost ; 
 scalar_t__ seq_return_cost ; 

__attribute__((used)) static void
FUNC13 (pattern_seq pseq)
{
  matching_seq mseq;
  rtx x;
  int i;
  int hascall;
  HARD_REG_SET linkregs;

  /* Initialize data.  */
  FUNC5 (linkregs);
  pseq->link_reg = NULL_RTX;
  pseq->abstracted_length = 0;

  pseq->gain = -(seq_call_cost - seq_jump_cost + seq_return_cost);

  /* Determine ABSTRACTED_LENGTH and COST for matching sequences of PSEQ.
     ABSTRACTED_LENGTH may be less than MATCHING_LENGTH if sequences in the
     same block overlap. */

  for (mseq = pseq->matching_seqs; mseq; mseq = mseq->next_matching_seq)
    {
      /* Determine ABSTRACTED_LENGTH.  */
      if (mseq->next_matching_seq)
        mseq->abstracted_length = (int)(mseq->next_matching_seq->idx -
                                        mseq->idx);
      else
        mseq->abstracted_length = mseq->matching_length;

      if (mseq->abstracted_length > mseq->matching_length)
        mseq->abstracted_length = mseq->matching_length;

      /* Compute the cost of sequence.  */
      FUNC2 (mseq);

      /* If COST is big enough registers live in this matching sequence
         should not be used as a link register. Also set ABSTRACTED_LENGTH
         of PSEQ.  */
      if (mseq->cost > seq_call_cost)
        {
          FUNC8 (&linkregs, mseq->insn,
                                  mseq->abstracted_length);
          if (mseq->abstracted_length > pseq->abstracted_length)
            pseq->abstracted_length = mseq->abstracted_length;
        }
    }

  /* Modify ABSTRACTED_LENGTH of PSEQ if pattern sequence overlaps with one
     of the matching sequences.  */
  for (mseq = pseq->matching_seqs; mseq; mseq = mseq->next_matching_seq)
    {
      x = pseq->insn;
      for (i = 0; (i < pseq->abstracted_length) && (x != mseq->insn); i++)
        x = FUNC11 (x);
      pseq->abstracted_length = i;
    }

  /* Compute the cost of pattern sequence.  */
  FUNC2 (pseq);

  /* No gain if COST is too small.  */
  if (pseq->cost <= seq_call_cost)
  {
    pseq->gain = -1;
    return;
  }

  /* Ensure that no matching sequence is longer than the pattern sequence.  */
  for (mseq = pseq->matching_seqs; mseq; mseq = mseq->next_matching_seq)
    {
      if (mseq->abstracted_length > pseq->abstracted_length)
        {
          mseq->abstracted_length = pseq->abstracted_length;
          FUNC2 (mseq);
        }
      /* Once the length is stabilizing the gain can be calculated.  */
      if (mseq->cost > seq_call_cost)
        pseq->gain += mseq->cost - seq_call_cost;
    }

  /* No need to do further work if there is no gain.  */
  if (pseq->gain <= 0)
    return;

  /* Should not use registers live in the pattern sequence as link register.
   */
  FUNC8 (&linkregs, pseq->insn, pseq->abstracted_length);

  /* Determine whether pattern sequence contains a call_insn.  */
  hascall = 0;
  x = pseq->insn;
  for (i = 0; i < pseq->abstracted_length; i++)
    {
      if (FUNC0 (x))
        {
          hascall = 1;
          break;
        }
      x = FUNC11 (x);
    }

  /* Should not use a register as a link register if - it is a fixed
     register, or - the sequence contains a call insn and the register is a
     call used register, or - the register needs to be saved if used in a
     function but was not used before (since saving it can invalidate already
     computed frame pointer offsets), or - the register cannot be used as a
     base register.  */

  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    if (fixed_regs[i]
#ifdef REGNO_OK_FOR_INDIRECT_JUMP_P
        || (!REGNO_OK_FOR_INDIRECT_JUMP_P (i, Pmode))
#else
        || (!FUNC10 (i, Pmode, MEM, SCRATCH))
        || (!FUNC12 (FUNC4 (i),
				 FUNC7 (VOIDmode, MEM, SCRATCH)))
#endif
        || (hascall && call_used_regs[i])
        || (!call_used_regs[i] && !regs_ever_live[i]))
      FUNC1 (linkregs, i);

  /* Find an appropriate register to be used as the link register.  */
  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    if (FUNC6 (linkregs, i))
      {
        pseq->link_reg = FUNC9 (Pmode, i);
        break;
      }

  /* Abstraction is not possible if no link register is available, so set
     gain to 0.  */
  if (!pseq->link_reg)
    pseq->gain = 0;
}