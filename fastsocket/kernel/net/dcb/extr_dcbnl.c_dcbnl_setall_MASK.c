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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct nlattr {int dummy; } ;
struct net_device {TYPE_1__* dcbnl_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* setall ) (struct net_device*) ;} ;

/* Variables and functions */
 size_t DCB_ATTR_SET_ALL ; 
 int /*<<< orphan*/  DCB_CMD_SET_ALL ; 
 int EINVAL ; 
 int /*<<< orphan*/  RTM_SETDCB ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev, struct nlattr **tb,
                        u32 pid, u32 seq, u16 flags)
{
	int ret = -EINVAL;

	if (!tb[DCB_ATTR_SET_ALL] || !netdev->dcbnl_ops->setall)
		return ret;

	ret = FUNC0(netdev->dcbnl_ops->setall(netdev), RTM_SETDCB,
	                  DCB_CMD_SET_ALL, DCB_ATTR_SET_ALL, pid, seq, flags);

	return ret;
}