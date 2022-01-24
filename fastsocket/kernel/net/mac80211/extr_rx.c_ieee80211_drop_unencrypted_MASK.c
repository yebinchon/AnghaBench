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
struct sk_buff {int dummy; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_rx_data {TYPE_1__* sdata; scalar_t__ key; struct sk_buff* skb; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {scalar_t__ drop_unencrypted; } ;

/* Variables and functions */
 int EACCES ; 
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 int RX_FLAG_DECRYPTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_rx_data *rx, __le16 fc)
{
	struct sk_buff *skb = rx->skb;
	struct ieee80211_rx_status *status = FUNC0(skb);

	/*
	 * Pass through unencrypted frames if the hardware has
	 * decrypted them already.
	 */
	if (status->flag & RX_FLAG_DECRYPTED)
		return 0;

	/* Drop unencrypted frames if key is set. */
	if (FUNC4(!FUNC1(fc) &&
		     !FUNC3(fc) &&
		     FUNC2(fc) &&
		     (rx->key || rx->sdata->drop_unencrypted)))
		return -EACCES;

	return 0;
}