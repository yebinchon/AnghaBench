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
struct genl_info {scalar_t__* attrs; } ;
struct cfg80211_beacon_data {void* probe_resp_len; void* probe_resp; void* assocresp_ies_len; void* assocresp_ies; void* proberesp_ies_len; void* proberesp_ies; void* beacon_ies_len; void* beacon_ies; void* tail_len; void* tail; void* head_len; void* head; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t NL80211_ATTR_BEACON_HEAD ; 
 size_t NL80211_ATTR_BEACON_TAIL ; 
 size_t NL80211_ATTR_IE ; 
 size_t NL80211_ATTR_IE_ASSOC_RESP ; 
 size_t NL80211_ATTR_IE_PROBE_RESP ; 
 size_t NL80211_ATTR_PROBE_RESP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_beacon_data*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (scalar_t__) ; 
 void* FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct genl_info *info,
				struct cfg80211_beacon_data *bcn)
{
	bool haveinfo = false;

	if (!FUNC0(info->attrs[NL80211_ATTR_BEACON_TAIL]) ||
	    !FUNC0(info->attrs[NL80211_ATTR_IE]) ||
	    !FUNC0(info->attrs[NL80211_ATTR_IE_PROBE_RESP]) ||
	    !FUNC0(info->attrs[NL80211_ATTR_IE_ASSOC_RESP]))
		return -EINVAL;

	FUNC1(bcn, 0, sizeof(*bcn));

	if (info->attrs[NL80211_ATTR_BEACON_HEAD]) {
		bcn->head = FUNC2(info->attrs[NL80211_ATTR_BEACON_HEAD]);
		bcn->head_len = FUNC3(info->attrs[NL80211_ATTR_BEACON_HEAD]);
		if (!bcn->head_len)
			return -EINVAL;
		haveinfo = true;
	}

	if (info->attrs[NL80211_ATTR_BEACON_TAIL]) {
		bcn->tail = FUNC2(info->attrs[NL80211_ATTR_BEACON_TAIL]);
		bcn->tail_len =
		    FUNC3(info->attrs[NL80211_ATTR_BEACON_TAIL]);
		haveinfo = true;
	}

	if (!haveinfo)
		return -EINVAL;

	if (info->attrs[NL80211_ATTR_IE]) {
		bcn->beacon_ies = FUNC2(info->attrs[NL80211_ATTR_IE]);
		bcn->beacon_ies_len = FUNC3(info->attrs[NL80211_ATTR_IE]);
	}

	if (info->attrs[NL80211_ATTR_IE_PROBE_RESP]) {
		bcn->proberesp_ies =
			FUNC2(info->attrs[NL80211_ATTR_IE_PROBE_RESP]);
		bcn->proberesp_ies_len =
			FUNC3(info->attrs[NL80211_ATTR_IE_PROBE_RESP]);
	}

	if (info->attrs[NL80211_ATTR_IE_ASSOC_RESP]) {
		bcn->assocresp_ies =
			FUNC2(info->attrs[NL80211_ATTR_IE_ASSOC_RESP]);
		bcn->assocresp_ies_len =
			FUNC3(info->attrs[NL80211_ATTR_IE_ASSOC_RESP]);
	}

	if (info->attrs[NL80211_ATTR_PROBE_RESP]) {
		bcn->probe_resp =
			FUNC2(info->attrs[NL80211_ATTR_PROBE_RESP]);
		bcn->probe_resp_len =
			FUNC3(info->attrs[NL80211_ATTR_PROBE_RESP]);
	}

	return 0;
}