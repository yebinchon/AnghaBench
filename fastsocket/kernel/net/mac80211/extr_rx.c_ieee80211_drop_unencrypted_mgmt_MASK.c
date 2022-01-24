#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_rx_data {TYPE_2__* skb; scalar_t__ key; TYPE_1__* sdata; scalar_t__ sta; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_7__ {scalar_t__ data; int /*<<< orphan*/  len; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EACCES ; 
 struct ieee80211_rx_status* FUNC0 (TYPE_2__*) ; 
 int RX_FLAG_DECRYPTED ; 
 int /*<<< orphan*/  WLAN_STA_MFP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct ieee80211_rx_data *rx)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)rx->skb->data;
	struct ieee80211_rx_status *status = FUNC0(rx->skb);
	__le16 fc = hdr->frame_control;

	/*
	 * Pass through unencrypted frames if the hardware has
	 * decrypted them already.
	 */
	if (status->flag & RX_FLAG_DECRYPTED)
		return 0;

	if (rx->sta && FUNC11(rx->sta, WLAN_STA_MFP)) {
		if (FUNC12(!FUNC4(fc) &&
			     FUNC10(rx->skb) &&
			     rx->key)) {
			if (FUNC6(fc))
				FUNC1(rx->sdata->dev,
							    rx->skb->data,
							    rx->skb->len);
			else if (FUNC7(fc))
				FUNC2(rx->sdata->dev,
							      rx->skb->data,
							      rx->skb->len);
			return -EACCES;
		}
		/* BIP does not use Protected field, so need to check MMIE */
		if (FUNC12(FUNC8(rx->skb) &&
			     FUNC3(rx->skb) < 0)) {
			if (FUNC6(fc))
				FUNC1(rx->sdata->dev,
							    rx->skb->data,
							    rx->skb->len);
			else if (FUNC7(fc))
				FUNC2(rx->sdata->dev,
							      rx->skb->data,
							      rx->skb->len);
			return -EACCES;
		}
		/*
		 * When using MFP, Action frames are not allowed prior to
		 * having configured keys.
		 */
		if (FUNC12(FUNC5(fc) && !rx->key &&
			     FUNC9(
				     (struct ieee80211_hdr *) rx->skb->data)))
			return -EACCES;
	}

	return 0;
}