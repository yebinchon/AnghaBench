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
struct TYPE_2__ {int optional; int secondary_p; scalar_t__ reg_rtx; scalar_t__ out; scalar_t__ in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* rld ; 

__attribute__((used)) static void
FUNC4 (rtx insn, int r)
{
  if (FUNC1 (FUNC0 (insn)) < 0)
    /* It's the compiler's fault.  */
    FUNC3 ("could not find a spill register", insn);

  /* It's the user's fault; the operand's mode and constraint
     don't match.  Disable this reload so we don't crash in final.  */
  FUNC2 (insn,
		 "%<asm%> operand constraint incompatible with operand size");
  rld[r].in = 0;
  rld[r].out = 0;
  rld[r].reg_rtx = 0;
  rld[r].optional = 1;
  rld[r].secondary_p = 1;
}