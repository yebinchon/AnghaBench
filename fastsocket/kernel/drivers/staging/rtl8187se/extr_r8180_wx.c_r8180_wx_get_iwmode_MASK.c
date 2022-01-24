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
typedef  union iwreq_data {int dummy; } iwreq_data ;
struct r8180_priv {int /*<<< orphan*/  wx_sem; struct ieee80211_device* ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ieee80211_device {int modulation; } ;

/* Variables and functions */
 int IEEE80211_CCK_MODULATION ; 
 int IEEE80211_OFDM_MODULATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct r8180_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
			       struct iw_request_info *info,
			       union iwreq_data *wrqu, char *extra)
{
	struct r8180_priv *priv = FUNC1(dev);
	struct ieee80211_device *ieee;
	int ret = 0;



	FUNC0(&priv->wx_sem);

	ieee = priv->ieee80211;

	FUNC3(extra, "802.11");
	if(ieee->modulation & IEEE80211_CCK_MODULATION) {
		FUNC2(extra, "b");
		if(ieee->modulation & IEEE80211_OFDM_MODULATION)
			FUNC2(extra, "/g");
	} else if(ieee->modulation & IEEE80211_OFDM_MODULATION)
		FUNC2(extra, "g");

	FUNC4(&priv->wx_sem);

	return ret;
}