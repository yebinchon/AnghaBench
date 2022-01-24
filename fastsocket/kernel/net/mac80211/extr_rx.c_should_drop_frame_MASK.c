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
struct sk_buff {scalar_t__ data; scalar_t__ len; } ;
struct ieee80211_rx_status {scalar_t__ vendor_radiotap_len; int flag; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 int RX_FLAG_AMPDU_IS_ZEROLEN ; 
 int RX_FLAG_FAILED_FCS_CRC ; 
 int RX_FLAG_FAILED_PLCP_CRC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline int FUNC5(struct sk_buff *skb, int present_fcs_len)
{
	struct ieee80211_rx_status *status = FUNC0(skb);
	struct ieee80211_hdr *hdr;

	hdr = (void *)(skb->data + status->vendor_radiotap_len);

	if (status->flag & (RX_FLAG_FAILED_FCS_CRC |
			    RX_FLAG_FAILED_PLCP_CRC |
			    RX_FLAG_AMPDU_IS_ZEROLEN))
		return 1;
	if (FUNC4(skb->len < 16 + present_fcs_len +
				status->vendor_radiotap_len))
		return 1;
	if (FUNC2(hdr->frame_control) &&
	    !FUNC3(hdr->frame_control) &&
	    !FUNC1(hdr->frame_control))
		return 1;
	return 0;
}