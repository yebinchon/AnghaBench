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
typedef  void* u32 ;
struct ieee80211_device {scalar_t__ ps; scalar_t__ iw_mode; scalar_t__ state; int sta_sleep; int /*<<< orphan*/  lock; int /*<<< orphan*/  mgmt_tx_lock; void* ps_tl; void* ps_th; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* ps_request_tx_ack ) (int /*<<< orphan*/ ) ;scalar_t__ (* ps_is_queue_empty ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* enter_sleep_state ) (int /*<<< orphan*/ ,void*,void*) ;} ;

/* Variables and functions */
 scalar_t__ IEEE80211_LINKED ; 
 scalar_t__ IEEE80211_PS_DISABLED ; 
 scalar_t__ IW_MODE_INFRA ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_device*,int) ; 
 short FUNC1 (struct ieee80211_device*,void**,void**) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,void*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

inline void FUNC8(struct ieee80211_device *ieee)
{

	u32 th,tl;
	short sleep;

	unsigned long flags,flags2;

	FUNC3(&ieee->lock, flags);

	if((ieee->ps == IEEE80211_PS_DISABLED ||

		ieee->iw_mode != IW_MODE_INFRA ||
		ieee->state != IEEE80211_LINKED)){

		//#warning CHECK_LOCK_HERE
		FUNC3(&ieee->mgmt_tx_lock, flags2);

		FUNC2(ieee, 1);

		FUNC4(&ieee->mgmt_tx_lock, flags2);
	}

	sleep = FUNC1(ieee,&th, &tl);
//	printk("===>%s,%d[2 wake, 1 sleep, 0 do nothing], ieee->sta_sleep = %d\n",__func__, sleep,ieee->sta_sleep);
	/* 2 wake, 1 sleep, 0 do nothing */
	if(sleep == 0)
		goto out;

	if(sleep == 1){

		if(ieee->sta_sleep == 1)
			ieee->enter_sleep_state(ieee->dev,th,tl);

		else if(ieee->sta_sleep == 0){
	//		printk("send null 1\n");
			FUNC3(&ieee->mgmt_tx_lock, flags2);

			if(ieee->ps_is_queue_empty(ieee->dev)){


				ieee->sta_sleep = 2;

				ieee->ps_request_tx_ack(ieee->dev);

				FUNC0(ieee,1);

				ieee->ps_th = th;
				ieee->ps_tl = tl;
			}
			FUNC4(&ieee->mgmt_tx_lock, flags2);

		}


	}else if(sleep == 2){
//#warning CHECK_LOCK_HERE
		FUNC3(&ieee->mgmt_tx_lock, flags2);

	//	printk("send wakeup packet\n");
		FUNC2(ieee,1);

		FUNC4(&ieee->mgmt_tx_lock, flags2);
	}

out:
	FUNC4(&ieee->lock, flags);

}