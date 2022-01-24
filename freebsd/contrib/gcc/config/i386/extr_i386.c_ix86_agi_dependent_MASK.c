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
typedef  enum attr_type { ____Placeholder_attr_type } attr_type ;
struct TYPE_2__ {int n_operands; int /*<<< orphan*/ * operand; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MEM ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_PENTIUM ; 
 int TYPE_LEA ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ recog_data ; 

__attribute__((used)) static int
FUNC8 (rtx insn, rtx dep_insn, enum attr_type insn_type)
{
  rtx addr;

  if (insn_type == TYPE_LEA
      && TARGET_PENTIUM)
    {
      addr = FUNC1 (insn);

      if (FUNC0 (addr) == PARALLEL)
	addr = FUNC4 (addr, 0, 0);

      FUNC6 (FUNC0 (addr) == SET);

      addr = FUNC2 (addr);
    }
  else
    {
      int i;
      FUNC5 (insn);
      for (i = recog_data.n_operands - 1; i >= 0; --i)
	if (FUNC0 (recog_data.operand[i]) == MEM)
	  {
	    addr = FUNC3 (recog_data.operand[i], 0);
	    goto found;
	  }
      return 0;
    found:;
    }

  return FUNC7 (addr, dep_insn);
}