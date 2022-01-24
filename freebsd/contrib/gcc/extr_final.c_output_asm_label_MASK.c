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
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ LABEL_REF ; 
 scalar_t__ NOTE_INSN_DELETED_LABEL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  asm_out_file ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void
FUNC9 (rtx x)
{
  char buf[256];

  if (FUNC2 (x) == LABEL_REF)
    x = FUNC6 (x, 0);
  if (FUNC3 (x)
      || (FUNC5 (x)
	  && FUNC4 (x) == NOTE_INSN_DELETED_LABEL))
    FUNC0 (buf, "L", FUNC1 (x));
  else
    FUNC8 ("'%%l' operand isn't a label");

  FUNC7 (asm_out_file, buf);
}