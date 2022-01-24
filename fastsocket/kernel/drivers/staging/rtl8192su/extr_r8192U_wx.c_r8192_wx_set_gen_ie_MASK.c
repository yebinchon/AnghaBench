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
struct TYPE_2__ {int /*<<< orphan*/  length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct r8192_priv {int /*<<< orphan*/  wx_sem; int /*<<< orphan*/  ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
                                        struct iw_request_info *info,
                                        union iwreq_data *data, char *extra)
{
	   //printk("====>%s(), len:%d\n", __FUNCTION__, data->length);
	int ret=0;
        struct r8192_priv *priv = FUNC1(dev);
        FUNC0(&priv->wx_sem);
#if 1
        ret = FUNC2(priv->ieee80211, extra, data->data.length);
#endif
        FUNC3(&priv->wx_sem);
	//printk("<======%s(), ret:%d\n", __FUNCTION__, ret);
        return ret;


}