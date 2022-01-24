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
struct TYPE_4__ {int type; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  wdev; TYPE_2__ vif; struct ieee80211_local* local; } ;
struct ieee80211_local {TYPE_1__* ops; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_3__ {int /*<<< orphan*/  change_interface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EBUSY ; 
#define  NL80211_IFTYPE_ADHOC 132 
#define  NL80211_IFTYPE_AP 131 
#define  NL80211_IFTYPE_P2P_CLIENT 130 
#define  NL80211_IFTYPE_P2P_GO 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int FUNC2 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int,int) ; 
 int FUNC3 (struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_sub_if_data*) ; 

__attribute__((used)) static int FUNC9(struct ieee80211_sub_if_data *sdata,
					   enum nl80211_iftype type)
{
	struct ieee80211_local *local = sdata->local;
	int ret, err;
	enum nl80211_iftype internal_type = type;
	bool p2p = false;

	FUNC0();

	if (!local->ops->change_interface)
		return -EBUSY;

	switch (sdata->vif.type) {
	case NL80211_IFTYPE_AP:
	case NL80211_IFTYPE_STATION:
	case NL80211_IFTYPE_ADHOC:
		/*
		 * Could maybe also all others here?
		 * Just not sure how that interacts
		 * with the RX/config path e.g. for
		 * mesh.
		 */
		break;
	default:
		return -EBUSY;
	}

	switch (type) {
	case NL80211_IFTYPE_AP:
	case NL80211_IFTYPE_STATION:
	case NL80211_IFTYPE_ADHOC:
		/*
		 * Could probably support everything
		 * but WDS here (WDS do_open can fail
		 * under memory pressure, which this
		 * code isn't prepared to handle).
		 */
		break;
	case NL80211_IFTYPE_P2P_CLIENT:
		p2p = true;
		internal_type = NL80211_IFTYPE_STATION;
		break;
	case NL80211_IFTYPE_P2P_GO:
		p2p = true;
		internal_type = NL80211_IFTYPE_AP;
		break;
	default:
		return -EBUSY;
	}

	ret = FUNC3(sdata, internal_type);
	if (ret)
		return ret;

	FUNC6(sdata, false);

	FUNC8(sdata);

	ret = FUNC2(local, sdata, internal_type, p2p);
	if (ret)
		type = sdata->vif.type;

	/*
	 * Ignore return value here, there's not much we can do since
	 * the driver changed the interface type internally already.
	 * The warnings will hopefully make driver authors fix it :-)
	 */
	FUNC4(sdata);

	FUNC7(sdata, type);

	err = FUNC5(&sdata->wdev, false);
	FUNC1(err, "type change: do_open returned %d", err);

	return ret;
}