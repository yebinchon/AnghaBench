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
struct TYPE_4__ {int flags; scalar_t__ value; scalar_t__ disabled; } ;
union iwreq_data {TYPE_2__ retry; } ;
struct r8180_priv {scalar_t__ retry_rts; scalar_t__ retry_data; int /*<<< orphan*/  wx_sem; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_3__ {scalar_t__ bHwRadioOff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int EINVAL ; 
 int IW_RETRY_LIFETIME ; 
 int IW_RETRY_LIMIT ; 
 int IW_RETRY_MAX ; 
 scalar_t__ R8180_MAX_RETRY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct r8180_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				struct iw_request_info *info,
				union iwreq_data *wrqu, char *extra)
{
	struct r8180_priv *priv = FUNC2(dev);
	int err = 0;

	if(priv->ieee80211->bHwRadioOff)
		return 0;

	FUNC1(&priv->wx_sem);

	if (wrqu->retry.flags & IW_RETRY_LIFETIME ||
	    wrqu->retry.disabled){
		err = -EINVAL;
		goto exit;
	}
	if (!(wrqu->retry.flags & IW_RETRY_LIMIT)){
		err = -EINVAL;
		goto exit;
	}

	if(wrqu->retry.value > R8180_MAX_RETRY){
		err= -EINVAL;
		goto exit;
	}
	if (wrqu->retry.flags & IW_RETRY_MAX) {
		priv->retry_rts = wrqu->retry.value;
		FUNC0("Setting retry for RTS/CTS data to %d", wrqu->retry.value);

	}else {
		priv->retry_data = wrqu->retry.value;
		FUNC0("Setting retry for non RTS/CTS data to %d", wrqu->retry.value);
	}

	/* FIXME !
	 * We might try to write directly the TX config register
	 * or to restart just the (R)TX process.
	 * I'm unsure if whole reset is really needed
	 */

 	FUNC3(dev);
	/*
	if(priv->up){
		rtl8180_rtx_disable(dev);
		rtl8180_rx_enable(dev);
		rtl8180_tx_enable(dev);

	}
	*/
exit:
	FUNC4(&priv->wx_sem);

	return err;
}