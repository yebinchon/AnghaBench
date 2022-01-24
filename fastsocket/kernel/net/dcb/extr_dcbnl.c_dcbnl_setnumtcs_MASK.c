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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct nlattr {int dummy; } ;
struct net_device {TYPE_1__* dcbnl_ops; } ;
struct TYPE_2__ {int (* setnumtcs ) (struct net_device*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 size_t DCB_ATTR_NUMTCS ; 
 int /*<<< orphan*/  DCB_CMD_SNUMTCS ; 
 int DCB_NUMTCS_ATTR_ALL ; 
 int DCB_NUMTCS_ATTR_MAX ; 
 int EINVAL ; 
 int /*<<< orphan*/  RTM_SETDCB ; 
 int /*<<< orphan*/  dcbnl_numtcs_nest ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr**,int,struct nlattr*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, struct nlattr **tb,
                           u32 pid, u32 seq, u16 flags)
{
	struct nlattr *data[DCB_NUMTCS_ATTR_MAX + 1];
	int ret = -EINVAL;
	u8 value;
	int i;

	if (!tb[DCB_ATTR_NUMTCS] || !netdev->dcbnl_ops->setnumtcs)
		return ret;

	ret = FUNC2(data, DCB_NUMTCS_ATTR_MAX, tb[DCB_ATTR_NUMTCS],
	                       dcbnl_numtcs_nest);

	if (ret) {
		ret = -EINVAL;
		goto err;
	}

	for (i = DCB_NUMTCS_ATTR_ALL+1; i <= DCB_NUMTCS_ATTR_MAX; i++) {
		if (data[i] == NULL)
			continue;

		value = FUNC1(data[i]);

		ret = netdev->dcbnl_ops->setnumtcs(netdev, i, value);

		if (ret)
			goto operr;
	}

operr:
	ret = FUNC0(!!ret, RTM_SETDCB, DCB_CMD_SNUMTCS,
	                  DCB_ATTR_NUMTCS, pid, seq, flags);

err:
	return ret;
}