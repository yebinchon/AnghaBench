#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dataflow {int dummy; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  basic_block ;
typedef  scalar_t__ RTX_CODE ;

/* Variables and functions */
 scalar_t__ CLOBBER ; 
 scalar_t__ COND_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DF_REF_MUST_CLOBBER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PARALLEL ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dataflow*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5 (struct dataflow *dflow, rtx x, basic_block bb, rtx insn)
{
  RTX_CODE code = FUNC1 (x);

  if (code == SET || code == CLOBBER)
    {
      /* Mark the single def within the pattern.  */
      FUNC4 (dflow, x, bb, insn, 
		       code == CLOBBER ? DF_REF_MUST_CLOBBER : 0, true);
    }
  else if (code == COND_EXEC)
    {
      FUNC5  (dflow, FUNC0 (x), bb, insn);
    }
  else if (code == PARALLEL)
    {
      int i;

      /* Mark the multiple defs within the pattern.  */
      for (i = FUNC3 (x, 0) - 1; i >= 0; i--)
	 FUNC5 (dflow, FUNC2 (x, 0, i), bb, insn);
    }
}