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
struct dev_state {int /*<<< orphan*/  lock; int /*<<< orphan*/  async_pending; } ;
struct async {int /*<<< orphan*/  asynclist; struct dev_state* ps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct async *as)
{
	struct dev_state *ps = as->ps;
	unsigned long flags;

	FUNC1(&ps->lock, flags);
	FUNC0(&as->asynclist, &ps->async_pending);
	FUNC2(&ps->lock, flags);
}