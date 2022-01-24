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
struct r8180_priv {int /*<<< orphan*/  ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct iwreq {TYPE_1__ u; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  RTL_IOCTL_WPA_SUPPLICANT 128 
 scalar_t__ FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC2(struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct r8180_priv *priv = (struct r8180_priv *)FUNC0(dev);
	struct iwreq *wrq = (struct iwreq *) rq;
	int ret=-1;

	switch (cmd) {
	case RTL_IOCTL_WPA_SUPPLICANT:
		ret = FUNC1(priv->ieee80211, &wrq->u.data);
		return ret;
	default:
		return -EOPNOTSUPP;
	}

	return -EOPNOTSUPP;
}