#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_9__ {int assoc; int qos; scalar_t__ dtim_period; scalar_t__ arp_addr_cnt; int /*<<< orphan*/  p2p_noa_attr; } ;
struct TYPE_10__ {TYPE_4__ bss_conf; } ;
struct ieee80211_if_managed {int p2p_noa_index; scalar_t__ flags; int /*<<< orphan*/  chswitch_timer; int /*<<< orphan*/  timer; int /*<<< orphan*/  bcn_mon_timer; int /*<<< orphan*/  conn_mon_timer; int /*<<< orphan*/  vht_capa_mask; int /*<<< orphan*/  vht_capa; int /*<<< orphan*/  ht_capa_mask; int /*<<< orphan*/  ht_capa; int /*<<< orphan*/ * bssid; int /*<<< orphan*/ * associated; } ;
struct TYPE_8__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_5__ vif; TYPE_3__ u; int /*<<< orphan*/  ap_power_level; int /*<<< orphan*/  dev; struct ieee80211_local* local; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_7__ {TYPE_1__ conf; } ;
struct ieee80211_local {int /*<<< orphan*/  dynamic_ps_enable_work; int /*<<< orphan*/  dynamic_ps_timer; int /*<<< orphan*/ * ps_sdata; TYPE_2__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_if_managed*) ; 
 int BSS_CHANGED_ARP_FILTER ; 
 int BSS_CHANGED_ASSOC ; 
 int BSS_CHANGED_BSSID ; 
 int BSS_CHANGED_HT ; 
 int BSS_CHANGED_QOS ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  IEEE80211_CONF_CHANGE_PS ; 
 int IEEE80211_CONF_PS ; 
 int /*<<< orphan*/  IEEE80211_UNSET_POWER_LEVEL ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_local*,struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_sub_if_data*) ; 
 int FUNC10 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211_sub_if_data*) ; 

__attribute__((used)) static void FUNC18(struct ieee80211_sub_if_data *sdata,
				   u16 stype, u16 reason, bool tx,
				   u8 *frame_buf)
{
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
	struct ieee80211_local *local = sdata->local;
	u32 changed = 0;

	FUNC0(ifmgd);

	if (FUNC2(tx && !frame_buf))
		return;

	if (FUNC1(!ifmgd->associated))
		return;

	FUNC13(sdata);

	ifmgd->associated = NULL;
	FUNC16(sdata->dev);

	/*
	 * if we want to get out of ps before disassoc (why?) we have
	 * to do it before sending disassoc, as otherwise the null-packet
	 * won't be valid.
	 */
	if (local->hw.conf.flags & IEEE80211_CONF_PS) {
		local->hw.conf.flags &= ~IEEE80211_CONF_PS;
		FUNC7(local, IEEE80211_CONF_CHANGE_PS);
	}
	local->ps_sdata = NULL;

	/* disable per-vif ps */
	FUNC9(sdata);

	/* flush out any pending frame (e.g. DELBA) before deauth/disassoc */
	if (tx)
		FUNC6(local, sdata);

	/* deauthenticate/disassociate now */
	if (tx || frame_buf)
		FUNC11(sdata, ifmgd->bssid, stype,
					       reason, tx, frame_buf);

	/* flush out frame */
	if (tx)
		FUNC6(local, sdata);

	/* clear bssid only after building the needed mgmt frames */
	FUNC15(ifmgd->bssid, 0, ETH_ALEN);

	/* remove AP and TDLS peers */
	FUNC17(sdata);

	/* finally reset all BSS / config parameters */
	changed |= FUNC10(sdata);

	FUNC8(local, 0);
	changed |= BSS_CHANGED_ASSOC;
	sdata->vif.bss_conf.assoc = false;

	ifmgd->p2p_noa_index = -1;
	FUNC15(&sdata->vif.bss_conf.p2p_noa_attr, 0,
	       sizeof(sdata->vif.bss_conf.p2p_noa_attr));

	/* on the next assoc, re-program HT/VHT parameters */
	FUNC15(&ifmgd->ht_capa, 0, sizeof(ifmgd->ht_capa));
	FUNC15(&ifmgd->ht_capa_mask, 0, sizeof(ifmgd->ht_capa_mask));
	FUNC15(&ifmgd->vht_capa, 0, sizeof(ifmgd->vht_capa));
	FUNC15(&ifmgd->vht_capa_mask, 0, sizeof(ifmgd->vht_capa_mask));

	sdata->ap_power_level = IEEE80211_UNSET_POWER_LEVEL;

	FUNC4(&local->dynamic_ps_timer);
	FUNC3(&local->dynamic_ps_enable_work);

	/* Disable ARP filtering */
	if (sdata->vif.bss_conf.arp_addr_cnt)
		changed |= BSS_CHANGED_ARP_FILTER;

	sdata->vif.bss_conf.qos = false;
	changed |= BSS_CHANGED_QOS;

	/* The BSSID (not really interesting) and HT changed */
	changed |= BSS_CHANGED_BSSID | BSS_CHANGED_HT;
	FUNC5(sdata, changed);

	/* disassociated - set to defaults now */
	FUNC12(sdata, false);

	FUNC4(&sdata->u.mgd.conn_mon_timer);
	FUNC4(&sdata->u.mgd.bcn_mon_timer);
	FUNC4(&sdata->u.mgd.timer);
	FUNC4(&sdata->u.mgd.chswitch_timer);

	sdata->vif.bss_conf.dtim_period = 0;

	ifmgd->flags = 0;
	FUNC14(sdata);
}