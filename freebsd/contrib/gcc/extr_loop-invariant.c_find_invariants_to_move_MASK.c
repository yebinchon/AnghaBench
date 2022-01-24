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
struct invariant {int /*<<< orphan*/  invno; TYPE_1__* def; } ;
struct TYPE_2__ {scalar_t__ n_uses; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,struct invariant*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct invariant**,unsigned int*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  df ; 
 int /*<<< orphan*/  invariant_p ; 
 int /*<<< orphan*/  invariants ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (void)
{
  unsigned i, regs_used, n_inv_uses, regs_needed = 0, new_regs;
  struct invariant *inv = NULL;
  unsigned int n_regs = FUNC2 (df);

  if (!FUNC4 (invariant_p, invariants))
    return;

  /* Now something slightly more involved.  First estimate the number of used
     registers.  */
  n_inv_uses = 0;

  /* We do not really do a good job in this estimation; put some initial bound
     here to stand for induction variables etc. that we do not detect.  */
  regs_used = 2;

  for (i = 0; i < n_regs; i++)
    {
      if (!FUNC0 (df, i) && FUNC1 (df, i))
	{
	  /* This is a value that is used but not changed inside loop.  */
	  regs_used++;
	}
    }

  for (i = 0; FUNC3 (invariant_p, invariants, i, inv); i++)
    {
      if (inv->def)
	n_inv_uses += inv->def->n_uses;
    }

  new_regs = 0;
  while (FUNC5 (&inv, &regs_needed,
				  new_regs, regs_used, n_inv_uses) > 0)
    {
      FUNC6 (inv->invno);
      new_regs += regs_needed;
    }
}