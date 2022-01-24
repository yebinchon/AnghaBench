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
struct TYPE_2__ {int /*<<< orphan*/  (* getdcbx ) (struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DCB_ATTR_DCBX ; 
 int /*<<< orphan*/  DCB_CMD_GDCBX ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  RTM_GETDCB ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev, struct nlattr **tb,
			 u32 pid, u32 seq, u16 flags)
{
	int ret;

	if (!netdev->dcbnl_ops->getdcbx)
		return -EOPNOTSUPP;

	ret = FUNC0(netdev->dcbnl_ops->getdcbx(netdev), RTM_GETDCB,
			  DCB_CMD_GDCBX, DCB_ATTR_DCBX, pid, seq, flags);

	return ret;
}