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
struct net_device {int dummy; } ;
struct mii_ioctl_data {int /*<<< orphan*/  val_in; int /*<<< orphan*/  reg_num; int /*<<< orphan*/  val_out; int /*<<< orphan*/  phy_id; } ;
struct ifreq {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  xcvr_addr; } ;
struct et131x_adapter {TYPE_1__ Stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int FUNC0 (struct et131x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct et131x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  SIOCGMIIPHY 130 
#define  SIOCGMIIREG 129 
#define  SIOCSMIIREG 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mii_ioctl_data* FUNC3 (struct ifreq*) ; 
 struct et131x_adapter* FUNC4 (struct net_device*) ; 

int FUNC5(struct net_device *netdev, struct ifreq *reqbuf, int cmd)
{
	int status = 0;
	struct et131x_adapter *etdev = FUNC4(netdev);
	struct mii_ioctl_data *data = FUNC3(reqbuf);

	switch (cmd) {
	case SIOCGMIIPHY:
		data->phy_id = etdev->Stats.xcvr_addr;
		break;

	case SIOCGMIIREG:
		if (!FUNC2(CAP_NET_ADMIN))
			status = -EPERM;
		else
			status = FUNC0(etdev,
					data->reg_num, &data->val_out);
		break;

	case SIOCSMIIREG:
		if (!FUNC2(CAP_NET_ADMIN))
			status = -EPERM;
		else
			status = FUNC1(etdev, data->reg_num,
					 data->val_in);
		break;

	default:
		status = -EOPNOTSUPP;
	}
	return status;
}