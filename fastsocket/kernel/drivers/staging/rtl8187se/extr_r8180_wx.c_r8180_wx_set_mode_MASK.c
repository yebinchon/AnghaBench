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
union iwreq_data {scalar_t__ mode; } ;
struct r8180_priv {int /*<<< orphan*/  wx_sem; TYPE_1__* ieee80211; scalar_t__ bInactivePs; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ bHwRadioOff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 scalar_t__ IW_MODE_ADHOC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct r8180_priv* FUNC2 (struct net_device*) ; 
 int FUNC3 (TYPE_1__*,struct iw_request_info*,union iwreq_data*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct iw_request_info *a,
			     union iwreq_data *wrqu, char *b)
{
	struct r8180_priv *priv = FUNC2(dev);
	int ret;


	if(priv->ieee80211->bHwRadioOff)
		return 0;

	FUNC1(&priv->wx_sem);
//	printk("set mode ENABLE_IPS\n");
	if(priv->bInactivePs){
		if(wrqu->mode == IW_MODE_ADHOC)
			FUNC0(dev);
	}
	ret = FUNC3(priv->ieee80211,a,wrqu,b);

	//rtl8180_commit(dev);

	FUNC4(&priv->wx_sem);
	return ret;
}