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
typedef  int /*<<< orphan*/  u8 ;
struct sockaddr {scalar_t__ sa_family; int /*<<< orphan*/  sa_data; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bssid; } ;
struct ieee80211_device {short proto_started; int sync_scan_hurryup; scalar_t__ iw_mode; int wap_set; int /*<<< orphan*/  wx_sem; int /*<<< orphan*/  lock; TYPE_1__ current_network; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ IW_MODE_MASTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct ieee80211_device *ieee,
			 struct iw_request_info *info,
			 union iwreq_data *awrq,
			 char *extra)
{

	int ret = 0;
	u8 zero[] = {0,0,0,0,0,0};
	unsigned long flags;

	short ifup = ieee->proto_started;//dev->flags & IFF_UP;
	struct sockaddr *temp = (struct sockaddr *)awrq;

	ieee->sync_scan_hurryup = 1;

	FUNC0(&ieee->wx_sem);
	/* use ifconfig hw ether */
	if (ieee->iw_mode == IW_MODE_MASTER){
		ret = -1;
		goto out;
	}

	if (temp->sa_family != ARPHRD_ETHER){
		ret = -EINVAL;
		goto out;
	}

	if (ifup)
		FUNC2(ieee);

	/* just to avoid to give inconsistent infos in the
	 * get wx method. not really needed otherwise
	 */
	FUNC5(&ieee->lock, flags);

	FUNC4(ieee->current_network.bssid, temp->sa_data, ETH_ALEN);
	ieee->wap_set = FUNC3(temp->sa_data, zero,ETH_ALEN)!=0;

	FUNC6(&ieee->lock, flags);

	if (ifup)
		FUNC1(ieee);
out:
	FUNC7(&ieee->wx_sem);
	return ret;
}