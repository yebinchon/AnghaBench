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
struct flowi {scalar_t__ proto; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dst_entry**,struct flowi*,int) ; 
 int /*<<< orphan*/  init_net ; 
 int FUNC1 (int /*<<< orphan*/ *,struct dst_entry**,struct flowi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct dst_entry **pprt, struct flowi *flp, int flags)
{
	int err;

	err = FUNC0(pprt, flp, flags);
	if (err == 0 && flp->proto) {
		err = FUNC1(&init_net, pprt, flp, NULL, 0);
	}
	return err;
}