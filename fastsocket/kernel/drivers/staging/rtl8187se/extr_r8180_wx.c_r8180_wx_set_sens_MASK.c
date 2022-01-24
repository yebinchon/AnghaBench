#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  value; } ;
union iwreq_data {TYPE_1__ sens; } ;
struct r8180_priv {scalar_t__ (* rf_set_sens ) (struct net_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  wx_sem; int /*<<< orphan*/  sens; TYPE_2__* ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_4__ {scalar_t__ bHwRadioOff; } ;

/* Variables and functions */
 short EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct r8180_priv* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				struct iw_request_info *info,
				union iwreq_data *wrqu, char *extra)
{

	struct r8180_priv *priv = FUNC1(dev);

	short err = 0;

	if(priv->ieee80211->bHwRadioOff)
		return 0;

	FUNC0(&priv->wx_sem);
	//DMESG("attempt to set sensivity to %ddb",wrqu->sens.value);
	if(priv->rf_set_sens == NULL) {
		err= -1; /* we have not this support for this radio */
		goto exit;
	}
	if(priv->rf_set_sens(dev, wrqu->sens.value) == 0)
		priv->sens = wrqu->sens.value;
	else
		err= -EINVAL;

exit:
	FUNC3(&priv->wx_sem);

	return err;
}