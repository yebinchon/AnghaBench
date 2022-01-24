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
struct invariant {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  actual_stamp ; 
 int /*<<< orphan*/  FUNC0 (struct invariant*,int*,unsigned int*) ; 
 int FUNC1 (unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static int
FUNC2 (struct invariant *inv, unsigned *regs_needed,
		    unsigned new_regs, unsigned regs_used, unsigned n_inv_uses)
{
  int comp_cost, size_cost;

  FUNC0 (inv, &comp_cost, regs_needed);
  actual_stamp++;

  size_cost = (FUNC1 (new_regs + *regs_needed,
				     regs_used, n_inv_uses)
	       - FUNC1 (new_regs, regs_used, n_inv_uses));

  return comp_cost - size_cost;
}