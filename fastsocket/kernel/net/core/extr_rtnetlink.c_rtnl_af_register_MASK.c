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
struct rtnl_af_ops {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rtnl_af_ops*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(struct rtnl_af_ops *ops)
{
	int err;

	FUNC1();
	err = FUNC0(ops);
	FUNC2();
	return err;
}