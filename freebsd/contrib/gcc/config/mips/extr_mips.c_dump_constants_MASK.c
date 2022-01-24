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
struct mips16_constant {struct mips16_constant* next; int /*<<< orphan*/  value; int /*<<< orphan*/  mode; int /*<<< orphan*/  label; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct mips16_constant*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9 (struct mips16_constant *constants, rtx insn)
{
  struct mips16_constant *c, *next;
  int align;

  align = 0;
  for (c = constants; c != NULL; c = next)
    {
      /* If necessary, increase the alignment of PC.  */
      if (align < FUNC1 (c->mode))
	{
	  int align_log = FUNC6 (FUNC1 (c->mode));
	  insn = FUNC4 (FUNC8 (FUNC0 (align_log)), insn);
	}
      align = FUNC1 (c->mode);

      insn = FUNC5 (c->label, insn);
      insn = FUNC2 (c->mode, c->value, insn);

      next = c->next;
      FUNC7 (c);
    }

  FUNC3 (insn);
}