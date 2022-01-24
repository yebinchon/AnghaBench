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
struct rtnl_link_ops {int /*<<< orphan*/  list; scalar_t__ dellink; } ;

/* Variables and functions */
 int /*<<< orphan*/  link_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ unregister_netdevice ; 

int FUNC1(struct rtnl_link_ops *ops)
{
	if (!ops->dellink)
		ops->dellink = unregister_netdevice;

	FUNC0(&ops->list, &link_ops);
	return 0;
}