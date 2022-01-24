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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int /*<<< orphan*/  priority; int /*<<< orphan*/  data; } ;
struct ieee80211_device {int dummy; } ;
struct TYPE_2__ {int TxCurSeq; } ;
typedef  TYPE_1__* PTX_TS_RECORD ;
typedef  int /*<<< orphan*/  PTS_COMMON_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TX_DIR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ieee80211_device*ieee, struct sk_buff* skb, u8* dst)
{
	if (FUNC3(dst) || FUNC2(dst))
		return;
	if (FUNC1(skb->data)) //we deal qos data only
	{
		PTX_TS_RECORD pTS = NULL;
		if (!FUNC0(ieee, (PTS_COMMON_INFO*)(&pTS), dst, skb->priority, TX_DIR, true))
		{
			return;
		}
		pTS->TxCurSeq = (pTS->TxCurSeq+1)%4096;
	}
}