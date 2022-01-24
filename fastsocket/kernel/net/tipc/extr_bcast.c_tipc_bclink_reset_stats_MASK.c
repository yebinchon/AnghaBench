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
struct TYPE_2__ {int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 int ENOPROTOOPT ; 
 int /*<<< orphan*/  bc_lock ; 
 TYPE_1__* bcl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(void)
{
	if (!bcl)
		return -ENOPROTOOPT;

	FUNC1(&bc_lock);
	FUNC0(&bcl->stats, 0, sizeof(bcl->stats));
	FUNC2(&bc_lock);
	return 0;
}