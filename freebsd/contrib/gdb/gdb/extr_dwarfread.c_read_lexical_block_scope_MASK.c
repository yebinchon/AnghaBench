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
struct objfile {int dummy; } ;
struct dieinfo {int die_length; int /*<<< orphan*/  at_high_pc; int /*<<< orphan*/  at_low_pc; } ;
struct context_stack {int /*<<< orphan*/ * locals; int /*<<< orphan*/  start_addr; int /*<<< orphan*/  old_blocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct objfile*) ; 
 int /*<<< orphan*/ * local_symbols ; 
 struct context_stack* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,struct objfile*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (struct dieinfo *dip, char *thisdie, char *enddie,
			  struct objfile *objfile)
{
  struct context_stack *new;

  FUNC3 (0, dip->at_low_pc);
  FUNC2 (thisdie + dip->die_length, enddie, objfile);
  new = FUNC1 ();
  if (local_symbols != NULL)
    {
      FUNC0 (0, &local_symbols, new->old_blocks, new->start_addr,
		    dip->at_high_pc, objfile);
    }
  local_symbols = new->locals;
}