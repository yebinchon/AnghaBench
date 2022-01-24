#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {int /*<<< orphan*/  ignore_hazard_length_p; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  HAZARD_DELAY 130 
#define  HAZARD_HILO 129 
#define  HAZARD_NONE 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_MIPS16 ; 
 TYPE_2__* cfun ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5 (rtx insn, int length)
{
  /* A unconditional jump has an unfilled delay slot if it is not part
     of a sequence.  A conditional jump normally has a delay slot, but
     does not on MIPS16.  */
  if (FUNC0 (insn) || (TARGET_MIPS16 ? FUNC4 (insn) : FUNC2 (insn)))
    length += 4;

  /* See how many nops might be needed to avoid hardware hazards.  */
  if (!cfun->machine->ignore_hazard_length_p && FUNC1 (insn) >= 0)
    switch (FUNC3 (insn))
      {
      case HAZARD_NONE:
	break;

      case HAZARD_DELAY:
	length += 4;
	break;

      case HAZARD_HILO:
	length += 8;
	break;
      }

  /* All MIPS16 instructions are a measly two bytes.  */
  if (TARGET_MIPS16)
    length /= 2;

  return length;
}