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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ LABEL_REF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_LABEL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (rtx *rtl, void *data)
{
  rtx insn = (rtx) data;

  /* If this insn uses a LABEL_REF and there isn't a REG_LABEL note for it,
     we must rerun jump since it needs to place the note.  If this is a
     LABEL_REF for a CODE_LABEL that isn't in the insn chain, don't do this
     since no REG_LABEL will be added.  */
  return (FUNC0 (*rtl) == LABEL_REF
	  && ! FUNC3 (*rtl)
	  && FUNC2 (FUNC4 (*rtl, 0))
	  && FUNC1 (FUNC4 (*rtl, 0)) != 0
	  && ! FUNC5 (insn, REG_LABEL, FUNC4 (*rtl, 0)));
}