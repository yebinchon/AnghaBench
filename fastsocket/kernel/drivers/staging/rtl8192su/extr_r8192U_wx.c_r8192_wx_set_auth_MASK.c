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
union iwreq_data {int /*<<< orphan*/  param; } ;
struct r8192_priv {int /*<<< orphan*/  wx_sem; int /*<<< orphan*/  ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct iw_request_info*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
                                        struct iw_request_info *info,
                                        union iwreq_data *data, char *extra)
{
	int ret=0;

	//printk("====>%s()\n", __FUNCTION__);
	struct r8192_priv *priv = FUNC1(dev);
	FUNC0(&priv->wx_sem);
	ret = FUNC2(priv->ieee80211, info, &(data->param), extra);
	FUNC3(&priv->wx_sem);
	return ret;
}