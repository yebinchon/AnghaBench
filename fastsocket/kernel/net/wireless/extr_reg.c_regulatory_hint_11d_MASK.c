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
struct wiphy {int dummy; } ;
struct regulatory_request {scalar_t__ initiator; scalar_t__ wiphy_idx; char* alpha2; int country_ie_env; } ;
typedef  enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
typedef  enum environment_cap { ____Placeholder_environment_cap } environment_cap ;

/* Variables and functions */
 int ENVIRON_ANY ; 
 int ENVIRON_INDOOR ; 
 int ENVIRON_OUTDOOR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IEEE80211_COUNTRY_IE_MIN_LEN ; 
 scalar_t__ NL80211_REGDOM_SET_BY_COUNTRY_IE ; 
 scalar_t__ WIPHY_IDX_INVALID ; 
 struct regulatory_request* FUNC0 () ; 
 scalar_t__ FUNC1 (struct wiphy*) ; 
 struct regulatory_request* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct regulatory_request*) ; 
 int /*<<< orphan*/  reg_mutex ; 
 scalar_t__ FUNC6 (int) ; 

void FUNC7(struct wiphy *wiphy, enum ieee80211_band band,
			 const u8 *country_ie, u8 country_ie_len)
{
	char alpha2[2];
	enum environment_cap env = ENVIRON_ANY;
	struct regulatory_request *request, *lr;

	FUNC3(&reg_mutex);
	lr = FUNC0();

	if (FUNC6(!lr))
		goto out;

	/* IE len must be evenly divisible by 2 */
	if (country_ie_len & 0x01)
		goto out;

	if (country_ie_len < IEEE80211_COUNTRY_IE_MIN_LEN)
		goto out;

	alpha2[0] = country_ie[0];
	alpha2[1] = country_ie[1];

	if (country_ie[2] == 'I')
		env = ENVIRON_INDOOR;
	else if (country_ie[2] == 'O')
		env = ENVIRON_OUTDOOR;

	/*
	 * We will run this only upon a successful connection on cfg80211.
	 * We leave conflict resolution to the workqueue, where can hold
	 * cfg80211_mutex.
	 */
	if (lr->initiator == NL80211_REGDOM_SET_BY_COUNTRY_IE &&
	    lr->wiphy_idx != WIPHY_IDX_INVALID)
		goto out;

	request = FUNC2(sizeof(struct regulatory_request), GFP_KERNEL);
	if (!request)
		goto out;

	request->wiphy_idx = FUNC1(wiphy);
	request->alpha2[0] = alpha2[0];
	request->alpha2[1] = alpha2[1];
	request->initiator = NL80211_REGDOM_SET_BY_COUNTRY_IE;
	request->country_ie_env = env;

	FUNC5(request);
out:
	FUNC4(&reg_mutex);
}