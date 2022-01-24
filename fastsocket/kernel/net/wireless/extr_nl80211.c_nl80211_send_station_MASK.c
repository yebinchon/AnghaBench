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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  beacon_interval; int /*<<< orphan*/  dtim_period; } ;
struct station_info {int filled; int assoc_req_ies_len; int /*<<< orphan*/  const* assoc_req_ies; scalar_t__ t_offset; int /*<<< orphan*/  const sta_flags; TYPE_2__ bss_param; int /*<<< orphan*/  nonpeer_pm; int /*<<< orphan*/  peer_pm; int /*<<< orphan*/  local_pm; int /*<<< orphan*/  beacon_loss_count; int /*<<< orphan*/  tx_failed; int /*<<< orphan*/  tx_retries; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rxrate; int /*<<< orphan*/  txrate; int /*<<< orphan*/  signal_avg; int /*<<< orphan*/  signal; int /*<<< orphan*/  plink_state; int /*<<< orphan*/  plid; int /*<<< orphan*/  llid; scalar_t__ tx_bytes; scalar_t__ rx_bytes; int /*<<< orphan*/  inactive_time; int /*<<< orphan*/  connected_time; int /*<<< orphan*/  generation; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nl80211_sta_flag_update {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct TYPE_3__ {int signal_type; } ;
struct cfg80211_registered_device {TYPE_1__ wiphy; } ;

/* Variables and functions */
 int BSS_PARAM_FLAGS_CTS_PROT ; 
 int BSS_PARAM_FLAGS_SHORT_PREAMBLE ; 
 int BSS_PARAM_FLAGS_SHORT_SLOT_TIME ; 
#define  CFG80211_SIGNAL_TYPE_MBM 128 
 int EMSGSIZE ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_ATTR_GENERATION ; 
 int /*<<< orphan*/  NL80211_ATTR_IE ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_MAC ; 
 int /*<<< orphan*/  NL80211_ATTR_STA_INFO ; 
 int /*<<< orphan*/  NL80211_CMD_NEW_STATION ; 
 int /*<<< orphan*/  NL80211_STA_BSS_PARAM_BEACON_INTERVAL ; 
 int /*<<< orphan*/  NL80211_STA_BSS_PARAM_CTS_PROT ; 
 int /*<<< orphan*/  NL80211_STA_BSS_PARAM_DTIM_PERIOD ; 
 int /*<<< orphan*/  NL80211_STA_BSS_PARAM_SHORT_PREAMBLE ; 
 int /*<<< orphan*/  NL80211_STA_BSS_PARAM_SHORT_SLOT_TIME ; 
 int /*<<< orphan*/  NL80211_STA_INFO_BEACON_LOSS ; 
 int /*<<< orphan*/  NL80211_STA_INFO_BSS_PARAM ; 
 int /*<<< orphan*/  NL80211_STA_INFO_CONNECTED_TIME ; 
 int /*<<< orphan*/  NL80211_STA_INFO_INACTIVE_TIME ; 
 int /*<<< orphan*/  NL80211_STA_INFO_LLID ; 
 int /*<<< orphan*/  NL80211_STA_INFO_LOCAL_PM ; 
 int /*<<< orphan*/  NL80211_STA_INFO_NONPEER_PM ; 
 int /*<<< orphan*/  NL80211_STA_INFO_PEER_PM ; 
 int /*<<< orphan*/  NL80211_STA_INFO_PLID ; 
 int /*<<< orphan*/  NL80211_STA_INFO_PLINK_STATE ; 
 int /*<<< orphan*/  NL80211_STA_INFO_RX_BITRATE ; 
 int /*<<< orphan*/  NL80211_STA_INFO_RX_BYTES ; 
 int /*<<< orphan*/  NL80211_STA_INFO_RX_BYTES64 ; 
 int /*<<< orphan*/  NL80211_STA_INFO_RX_PACKETS ; 
 int /*<<< orphan*/  NL80211_STA_INFO_SIGNAL ; 
 int /*<<< orphan*/  NL80211_STA_INFO_SIGNAL_AVG ; 
 int /*<<< orphan*/  NL80211_STA_INFO_STA_FLAGS ; 
 int /*<<< orphan*/  NL80211_STA_INFO_TX_BITRATE ; 
 int /*<<< orphan*/  NL80211_STA_INFO_TX_BYTES ; 
 int /*<<< orphan*/  NL80211_STA_INFO_TX_BYTES64 ; 
 int /*<<< orphan*/  NL80211_STA_INFO_TX_FAILED ; 
 int /*<<< orphan*/  NL80211_STA_INFO_TX_PACKETS ; 
 int /*<<< orphan*/  NL80211_STA_INFO_TX_RETRIES ; 
 int /*<<< orphan*/  NL80211_STA_INFO_T_OFFSET ; 
 int STATION_INFO_ASSOC_REQ_IES ; 
 int STATION_INFO_BEACON_LOSS_COUNT ; 
 int STATION_INFO_BSS_PARAM ; 
 int STATION_INFO_CONNECTED_TIME ; 
 int STATION_INFO_INACTIVE_TIME ; 
 int STATION_INFO_LLID ; 
 int STATION_INFO_LOCAL_PM ; 
 int STATION_INFO_NONPEER_PM ; 
 int STATION_INFO_PEER_PM ; 
 int STATION_INFO_PLID ; 
 int STATION_INFO_PLINK_STATE ; 
 int STATION_INFO_RX_BITRATE ; 
 int STATION_INFO_RX_BYTES ; 
 int STATION_INFO_RX_BYTES64 ; 
 int STATION_INFO_RX_PACKETS ; 
 int STATION_INFO_SIGNAL ; 
 int STATION_INFO_SIGNAL_AVG ; 
 int STATION_INFO_STA_FLAGS ; 
 int STATION_INFO_TX_BITRATE ; 
 int STATION_INFO_TX_BYTES ; 
 int STATION_INFO_TX_BYTES64 ; 
 int STATION_INFO_TX_FAILED ; 
 int STATION_INFO_TX_PACKETS ; 
 int STATION_INFO_TX_RETRIES ; 
 int STATION_INFO_T_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *msg, u32 portid, u32 seq,
				int flags,
				struct cfg80211_registered_device *rdev,
				struct net_device *dev,
				const u8 *mac_addr, struct station_info *sinfo)
{
	void *hdr;
	struct nlattr *sinfoattr, *bss_param;

	hdr = FUNC3(msg, portid, seq, flags, NL80211_CMD_NEW_STATION);
	if (!hdr)
		return -1;

	if (FUNC9(msg, NL80211_ATTR_IFINDEX, dev->ifindex) ||
	    FUNC6(msg, NL80211_ATTR_MAC, ETH_ALEN, mac_addr) ||
	    FUNC9(msg, NL80211_ATTR_GENERATION, sinfo->generation))
		goto nla_put_failure;

	sinfoattr = FUNC5(msg, NL80211_ATTR_STA_INFO);
	if (!sinfoattr)
		goto nla_put_failure;
	if ((sinfo->filled & STATION_INFO_CONNECTED_TIME) &&
	    FUNC9(msg, NL80211_STA_INFO_CONNECTED_TIME,
			sinfo->connected_time))
		goto nla_put_failure;
	if ((sinfo->filled & STATION_INFO_INACTIVE_TIME) &&
	    FUNC9(msg, NL80211_STA_INFO_INACTIVE_TIME,
			sinfo->inactive_time))
		goto nla_put_failure;
	if ((sinfo->filled & (STATION_INFO_RX_BYTES |
			      STATION_INFO_RX_BYTES64)) &&
	    FUNC9(msg, NL80211_STA_INFO_RX_BYTES,
			(u32)sinfo->rx_bytes))
		goto nla_put_failure;
	if ((sinfo->filled & (STATION_INFO_TX_BYTES |
			      STATION_INFO_TX_BYTES64)) &&
	    FUNC9(msg, NL80211_STA_INFO_TX_BYTES,
			(u32)sinfo->tx_bytes))
		goto nla_put_failure;
	if ((sinfo->filled & STATION_INFO_RX_BYTES64) &&
	    FUNC10(msg, NL80211_STA_INFO_RX_BYTES64,
			sinfo->rx_bytes))
		goto nla_put_failure;
	if ((sinfo->filled & STATION_INFO_TX_BYTES64) &&
	    FUNC10(msg, NL80211_STA_INFO_TX_BYTES64,
			sinfo->tx_bytes))
		goto nla_put_failure;
	if ((sinfo->filled & STATION_INFO_LLID) &&
	    FUNC8(msg, NL80211_STA_INFO_LLID, sinfo->llid))
		goto nla_put_failure;
	if ((sinfo->filled & STATION_INFO_PLID) &&
	    FUNC8(msg, NL80211_STA_INFO_PLID, sinfo->plid))
		goto nla_put_failure;
	if ((sinfo->filled & STATION_INFO_PLINK_STATE) &&
	    FUNC11(msg, NL80211_STA_INFO_PLINK_STATE,
		       sinfo->plink_state))
		goto nla_put_failure;
	switch (rdev->wiphy.signal_type) {
	case CFG80211_SIGNAL_TYPE_MBM:
		if ((sinfo->filled & STATION_INFO_SIGNAL) &&
		    FUNC11(msg, NL80211_STA_INFO_SIGNAL,
			       sinfo->signal))
			goto nla_put_failure;
		if ((sinfo->filled & STATION_INFO_SIGNAL_AVG) &&
		    FUNC11(msg, NL80211_STA_INFO_SIGNAL_AVG,
			       sinfo->signal_avg))
			goto nla_put_failure;
		break;
	default:
		break;
	}
	if (sinfo->filled & STATION_INFO_TX_BITRATE) {
		if (!FUNC2(msg, &sinfo->txrate,
					  NL80211_STA_INFO_TX_BITRATE))
			goto nla_put_failure;
	}
	if (sinfo->filled & STATION_INFO_RX_BITRATE) {
		if (!FUNC2(msg, &sinfo->rxrate,
					  NL80211_STA_INFO_RX_BITRATE))
			goto nla_put_failure;
	}
	if ((sinfo->filled & STATION_INFO_RX_PACKETS) &&
	    FUNC9(msg, NL80211_STA_INFO_RX_PACKETS,
			sinfo->rx_packets))
		goto nla_put_failure;
	if ((sinfo->filled & STATION_INFO_TX_PACKETS) &&
	    FUNC9(msg, NL80211_STA_INFO_TX_PACKETS,
			sinfo->tx_packets))
		goto nla_put_failure;
	if ((sinfo->filled & STATION_INFO_TX_RETRIES) &&
	    FUNC9(msg, NL80211_STA_INFO_TX_RETRIES,
			sinfo->tx_retries))
		goto nla_put_failure;
	if ((sinfo->filled & STATION_INFO_TX_FAILED) &&
	    FUNC9(msg, NL80211_STA_INFO_TX_FAILED,
			sinfo->tx_failed))
		goto nla_put_failure;
	if ((sinfo->filled & STATION_INFO_BEACON_LOSS_COUNT) &&
	    FUNC9(msg, NL80211_STA_INFO_BEACON_LOSS,
			sinfo->beacon_loss_count))
		goto nla_put_failure;
	if ((sinfo->filled & STATION_INFO_LOCAL_PM) &&
	    FUNC9(msg, NL80211_STA_INFO_LOCAL_PM,
			sinfo->local_pm))
		goto nla_put_failure;
	if ((sinfo->filled & STATION_INFO_PEER_PM) &&
	    FUNC9(msg, NL80211_STA_INFO_PEER_PM,
			sinfo->peer_pm))
		goto nla_put_failure;
	if ((sinfo->filled & STATION_INFO_NONPEER_PM) &&
	    FUNC9(msg, NL80211_STA_INFO_NONPEER_PM,
			sinfo->nonpeer_pm))
		goto nla_put_failure;
	if (sinfo->filled & STATION_INFO_BSS_PARAM) {
		bss_param = FUNC5(msg, NL80211_STA_INFO_BSS_PARAM);
		if (!bss_param)
			goto nla_put_failure;

		if (((sinfo->bss_param.flags & BSS_PARAM_FLAGS_CTS_PROT) &&
		     FUNC7(msg, NL80211_STA_BSS_PARAM_CTS_PROT)) ||
		    ((sinfo->bss_param.flags & BSS_PARAM_FLAGS_SHORT_PREAMBLE) &&
		     FUNC7(msg, NL80211_STA_BSS_PARAM_SHORT_PREAMBLE)) ||
		    ((sinfo->bss_param.flags & BSS_PARAM_FLAGS_SHORT_SLOT_TIME) &&
		     FUNC7(msg, NL80211_STA_BSS_PARAM_SHORT_SLOT_TIME)) ||
		    FUNC11(msg, NL80211_STA_BSS_PARAM_DTIM_PERIOD,
			       sinfo->bss_param.dtim_period) ||
		    FUNC8(msg, NL80211_STA_BSS_PARAM_BEACON_INTERVAL,
				sinfo->bss_param.beacon_interval))
			goto nla_put_failure;

		FUNC4(msg, bss_param);
	}
	if ((sinfo->filled & STATION_INFO_STA_FLAGS) &&
	    FUNC6(msg, NL80211_STA_INFO_STA_FLAGS,
		    sizeof(struct nl80211_sta_flag_update),
		    &sinfo->sta_flags))
		goto nla_put_failure;
	if ((sinfo->filled & STATION_INFO_T_OFFSET) &&
		FUNC10(msg, NL80211_STA_INFO_T_OFFSET,
			    sinfo->t_offset))
		goto nla_put_failure;
	FUNC4(msg, sinfoattr);

	if ((sinfo->filled & STATION_INFO_ASSOC_REQ_IES) &&
	    FUNC6(msg, NL80211_ATTR_IE, sinfo->assoc_req_ies_len,
		    sinfo->assoc_req_ies))
		goto nla_put_failure;

	return FUNC1(msg, hdr);

 nla_put_failure:
	FUNC0(msg, hdr);
	return -EMSGSIZE;
}