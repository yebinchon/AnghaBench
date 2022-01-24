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
typedef  size_t u_int8_t ;
struct xt_target {size_t family; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  target; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* xt ; 

int
FUNC3(struct xt_target *target)
{
	u_int8_t af = target->family;
	int ret;

	ret = FUNC1(&xt[af].mutex);
	if (ret != 0)
		return ret;
	FUNC0(&target->list, &xt[af].target);
	FUNC2(&xt[af].mutex);
	return ret;
}