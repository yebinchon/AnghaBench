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
typedef  int u8 ;
typedef  int u16 ;
struct sta_info {unsigned long driver_buffered_tids; struct sk_buff_head* ps_tx_buf; struct sk_buff_head* tx_filtered; struct ieee80211_sub_if_data* sdata; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  total_ps_buffered; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  enum ieee80211_frame_release_type { ____Placeholder_ieee80211_frame_release_type } ieee80211_frame_release_type ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  IEEE80211_FCTL_MOREDATA ; 
 int IEEE80211_FRAME_RELEASE_PSPOLL ; 
 int IEEE80211_FRAME_RELEASE_UAPSD ; 
 int IEEE80211_NUM_ACS ; 
 int IEEE80211_QOS_CTL_EOSP ; 
 int IEEE80211_QOS_CTL_TID_MASK ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_NO_PS_BUFFER ; 
 int IEEE80211_TX_CTL_REQ_TX_STATUS ; 
 int IEEE80211_TX_STATUS_EOSP ; 
 int /*<<< orphan*/  WLAN_STA_SP ; 
 struct sk_buff* FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_local*,struct sta_info*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_local*,struct sta_info*,unsigned long,int,int,int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_local*,struct sk_buff_head*) ; 
 int* FUNC11 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_sub_if_data*,struct sta_info*,int,int) ; 
 unsigned long FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct sta_info*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC17 (struct sk_buff_head*) ; 
 scalar_t__ FUNC18 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC20 (struct sta_info*) ; 

__attribute__((used)) static void
FUNC21(struct sta_info *sta,
				  int n_frames, u8 ignored_acs,
				  enum ieee80211_frame_release_type reason)
{
	struct ieee80211_sub_if_data *sdata = sta->sdata;
	struct ieee80211_local *local = sdata->local;
	bool found = false;
	bool more_data = false;
	int ac;
	unsigned long driver_release_tids = 0;
	struct sk_buff_head frames;

	/* Service or PS-Poll period starts */
	FUNC16(sta, WLAN_STA_SP);

	FUNC3(&frames);

	/*
	 * Get response frame(s) and more data bit for it.
	 */
	for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
		unsigned long tids;

		if (ignored_acs & FUNC0(ac))
			continue;

		tids = FUNC15(ac);

		if (!found) {
			driver_release_tids = sta->driver_buffered_tids & tids;
			if (driver_release_tids) {
				found = true;
			} else {
				struct sk_buff *skb;

				while (n_frames > 0) {
					skb = FUNC17(&sta->tx_filtered[ac]);
					if (!skb) {
						skb = FUNC17(
							&sta->ps_tx_buf[ac]);
						if (skb)
							local->total_ps_buffered--;
					}
					if (!skb)
						break;
					n_frames--;
					found = true;
					FUNC4(&frames, skb);
				}
			}

			/*
			 * If the driver has data on more than one TID then
			 * certainly there's more data if we release just a
			 * single frame now (from a single TID).
			 */
			if (reason == IEEE80211_FRAME_RELEASE_PSPOLL &&
			    FUNC9(driver_release_tids) > 1) {
				more_data = true;
				driver_release_tids =
					FUNC0(FUNC8(driver_release_tids) - 1);
				break;
			}
		}

		if (!FUNC18(&sta->tx_filtered[ac]) ||
		    !FUNC18(&sta->ps_tx_buf[ac])) {
			more_data = true;
			break;
		}
	}

	if (!found) {
		int tid;

		/*
		 * For PS-Poll, this can only happen due to a race condition
		 * when we set the TIM bit and the station notices it, but
		 * before it can poll for the frame we expire it.
		 *
		 * For uAPSD, this is said in the standard (11.2.1.5 h):
		 *	At each unscheduled SP for a non-AP STA, the AP shall
		 *	attempt to transmit at least one MSDU or MMPDU, but no
		 *	more than the value specified in the Max SP Length field
		 *	in the QoS Capability element from delivery-enabled ACs,
		 *	that are destined for the non-AP STA.
		 *
		 * Since we have no other MSDU/MMPDU, transmit a QoS null frame.
		 */

		/* This will evaluate to 1, 3, 5 or 7. */
		tid = 7 - ((FUNC8(~ignored_acs) - 1) << 1);

		FUNC14(sdata, sta, tid, reason);
		return;
	}

	if (!driver_release_tids) {
		struct sk_buff_head pending;
		struct sk_buff *skb;
		int num = 0;
		u16 tids = 0;

		FUNC19(&pending);

		while ((skb = FUNC2(&frames))) {
			struct ieee80211_tx_info *info = FUNC1(skb);
			struct ieee80211_hdr *hdr = (void *) skb->data;
			u8 *qoshdr = NULL;

			num++;

			/*
			 * Tell TX path to send this frame even though the
			 * STA may still remain is PS mode after this frame
			 * exchange.
			 */
			info->flags |= IEEE80211_TX_CTL_NO_PS_BUFFER;

			/*
			 * Use MoreData flag to indicate whether there are
			 * more buffered frames for this STA
			 */
			if (more_data || !FUNC18(&frames))
				hdr->frame_control |=
					FUNC5(IEEE80211_FCTL_MOREDATA);
			else
				hdr->frame_control &=
					FUNC5(~IEEE80211_FCTL_MOREDATA);

			if (FUNC12(hdr->frame_control) ||
			    FUNC13(hdr->frame_control))
				qoshdr = FUNC11(hdr);

			/* end service period after last frame */
			if (FUNC18(&frames)) {
				if (reason == IEEE80211_FRAME_RELEASE_UAPSD &&
				    qoshdr)
					*qoshdr |= IEEE80211_QOS_CTL_EOSP;

				info->flags |= IEEE80211_TX_STATUS_EOSP |
					       IEEE80211_TX_CTL_REQ_TX_STATUS;
			}

			if (qoshdr)
				tids |= FUNC0(*qoshdr & IEEE80211_QOS_CTL_TID_MASK);
			else
				tids |= FUNC0(0);

			FUNC4(&pending, skb);
		}

		FUNC6(local, sta, tids, num,
					  reason, more_data);

		FUNC10(local, &pending);

		FUNC20(sta);
	} else {
		/*
		 * We need to release a frame that is buffered somewhere in the
		 * driver ... it'll have to handle that.
		 * Note that, as per the comment above, it'll also have to see
		 * if there is more than just one frame on the specific TID that
		 * we're releasing from, and it needs to set the more-data bit
		 * accordingly if we tell it that there's no more data. If we do
		 * tell it there's more data, then of course the more-data bit
		 * needs to be set anyway.
		 */
		FUNC7(local, sta, driver_release_tids,
					    n_frames, reason, more_data);

		/*
		 * Note that we don't recalculate the TIM bit here as it would
		 * most likely have no effect at all unless the driver told us
		 * that the TID became empty before returning here from the
		 * release function.
		 * Either way, however, when the driver tells us that the TID
		 * became empty we'll do the TIM recalculation.
		 */
	}
}