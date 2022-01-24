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
typedef  union iwreq_data {int dummy; } iwreq_data ;
struct r8180_priv {short crcmon; int /*<<< orphan*/  wx_sem; scalar_t__ up; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ bHwRadioOff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct r8180_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
			       struct iw_request_info *info,
			       union iwreq_data *wrqu, char *extra)
{
	struct r8180_priv *priv = FUNC2(dev);
	int *parms = (int *)extra;
	int enable = (parms[0] > 0);
	short prev = priv->crcmon;


	if(priv->ieee80211->bHwRadioOff)
		return 0;

	FUNC1(&priv->wx_sem);

	if(enable)
		priv->crcmon=1;
	else
		priv->crcmon=0;

	FUNC0("bad CRC in monitor mode are %s",
	      priv->crcmon ? "accepted" : "rejected");

	if(prev != priv->crcmon && priv->up){
		FUNC3(dev);
		FUNC4(dev);
	}

	FUNC5(&priv->wx_sem);

	return 0;
}