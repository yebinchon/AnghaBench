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
typedef  int RTX_FRAME_RELATED_P ;
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 unsigned int FIRST_PSEUDO_REGISTER ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ UNITS_PER_WORD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int,int) ; 

__attribute__((used)) static void
FUNC5 (rtx pointer, HOST_WIDE_INT offset)
{
  unsigned int regno;
  rtx insn;

  for (regno = 0; regno < FIRST_PSEUDO_REGISTER; regno++)
    if (FUNC4 (regno, true))
      {
	insn = FUNC1 (FUNC0 (FUNC2 (Pmode, pointer),
					       Pmode, offset),
			       FUNC3 (Pmode, regno));
	RTX_FRAME_RELATED_P (insn) = 1;
	offset += UNITS_PER_WORD;
      }
}