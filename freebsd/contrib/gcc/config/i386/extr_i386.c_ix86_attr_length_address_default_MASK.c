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
struct TYPE_2__ {int n_operands; int /*<<< orphan*/ * operand; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MEM ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_LEA ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__ recog_data ; 

int
FUNC9 (rtx insn)
{
  int i;

  if (FUNC7 (insn) == TYPE_LEA)
    {
      rtx set = FUNC1 (insn);

      if (FUNC0 (set) == PARALLEL)
	set = FUNC4 (set, 0, 0);

      FUNC6 (FUNC0 (set) == SET);

      return FUNC8 (FUNC2 (set));
    }

  FUNC5 (insn);
  for (i = recog_data.n_operands - 1; i >= 0; --i)
    if (FUNC0 (recog_data.operand[i]) == MEM)
      {
	return FUNC8 (FUNC3 (recog_data.operand[i], 0));
	break;
      }
  return 0;
}