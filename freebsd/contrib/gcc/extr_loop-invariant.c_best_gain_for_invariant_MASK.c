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
struct invariant {scalar_t__ eqto; scalar_t__ invno; scalar_t__ move; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,struct invariant*) ; 
 int FUNC1 (struct invariant*,unsigned int*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  invariant_p ; 
 int /*<<< orphan*/  invariants ; 

__attribute__((used)) static int
FUNC2 (struct invariant **best, unsigned *regs_needed,
			 unsigned new_regs, unsigned regs_used,
			 unsigned n_inv_uses)
{
  struct invariant *inv;
  int gain = 0, again;
  unsigned aregs_needed, invno;

  for (invno = 0; FUNC0 (invariant_p, invariants, invno, inv); invno++)
    {
      if (inv->move)
	continue;

      /* Only consider the "representatives" of equivalent invariants.  */
      if (inv->eqto != inv->invno)
	continue;

      again = FUNC1 (inv, &aregs_needed,
				  new_regs, regs_used, n_inv_uses);
      if (again > gain)
	{
	  gain = again;
	  *best = inv;
	  *regs_needed = aregs_needed;
	}
    }

  return gain;
}