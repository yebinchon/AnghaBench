#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_2__ {int n_operands; int n_dups; void*** dup_loc; void*** operand_loc; void** operand; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ MULT ; 
 scalar_t__ PLUS ; 
 scalar_t__ SUBREG ; 
 void* FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ recog_data ; 
 void* FUNC4 (void**) ; 

void
FUNC5 (rtx insn)
{
  int i;
  FUNC3 (insn);
  for (i = 0; i < recog_data.n_operands; i++)
    {
      /* The following test cannot use recog_data.operand when testing
	 for a SUBREG: the underlying object might have been changed
	 already if we are inside a match_operator expression that
	 matches the else clause.  Instead we test the underlying
	 expression directly.  */
      if (FUNC0 (*recog_data.operand_loc[i]) == SUBREG)
	recog_data.operand[i] = FUNC2 (recog_data.operand_loc[i]);
      else if (FUNC0 (recog_data.operand[i]) == PLUS
	       || FUNC0 (recog_data.operand[i]) == MULT
	       || FUNC1 (recog_data.operand[i]))
	recog_data.operand[i] = FUNC4 (recog_data.operand_loc[i]);
    }

  for (i = 0; i < recog_data.n_dups; i++)
    {
      if (FUNC0 (*recog_data.dup_loc[i]) == SUBREG)
	*recog_data.dup_loc[i] = FUNC2 (recog_data.dup_loc[i]);
      else if (FUNC0 (*recog_data.dup_loc[i]) == PLUS
	       || FUNC0 (*recog_data.dup_loc[i]) == MULT
	       || FUNC1 (*recog_data.dup_loc[i]))
	*recog_data.dup_loc[i] = FUNC4 (recog_data.dup_loc[i]);
    }
}