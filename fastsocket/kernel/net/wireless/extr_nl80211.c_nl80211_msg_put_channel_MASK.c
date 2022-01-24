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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct ieee80211_channel {int flags; int /*<<< orphan*/  max_power; int /*<<< orphan*/  dfs_state; int /*<<< orphan*/  dfs_state_entered; int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOBUFS ; 
 int IEEE80211_CHAN_DISABLED ; 
 int IEEE80211_CHAN_NO_160MHZ ; 
 int IEEE80211_CHAN_NO_80MHZ ; 
 int IEEE80211_CHAN_NO_HT40MINUS ; 
 int IEEE80211_CHAN_NO_HT40PLUS ; 
 int IEEE80211_CHAN_NO_IBSS ; 
 int IEEE80211_CHAN_PASSIVE_SCAN ; 
 int IEEE80211_CHAN_RADAR ; 
 int /*<<< orphan*/  NL80211_FREQUENCY_ATTR_DFS_STATE ; 
 int /*<<< orphan*/  NL80211_FREQUENCY_ATTR_DFS_TIME ; 
 int /*<<< orphan*/  NL80211_FREQUENCY_ATTR_DISABLED ; 
 int /*<<< orphan*/  NL80211_FREQUENCY_ATTR_FREQ ; 
 int /*<<< orphan*/  NL80211_FREQUENCY_ATTR_MAX_TX_POWER ; 
 int /*<<< orphan*/  NL80211_FREQUENCY_ATTR_NO_160MHZ ; 
 int /*<<< orphan*/  NL80211_FREQUENCY_ATTR_NO_80MHZ ; 
 int /*<<< orphan*/  NL80211_FREQUENCY_ATTR_NO_HT40_MINUS ; 
 int /*<<< orphan*/  NL80211_FREQUENCY_ATTR_NO_HT40_PLUS ; 
 int /*<<< orphan*/  NL80211_FREQUENCY_ATTR_NO_IBSS ; 
 int /*<<< orphan*/  NL80211_FREQUENCY_ATTR_PASSIVE_SCAN ; 
 int /*<<< orphan*/  NL80211_FREQUENCY_ATTR_RADAR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *msg,
				   struct ieee80211_channel *chan,
				   bool large)
{
	if (FUNC3(msg, NL80211_FREQUENCY_ATTR_FREQ,
			chan->center_freq))
		goto nla_put_failure;

	if ((chan->flags & IEEE80211_CHAN_DISABLED) &&
	    FUNC2(msg, NL80211_FREQUENCY_ATTR_DISABLED))
		goto nla_put_failure;
	if ((chan->flags & IEEE80211_CHAN_PASSIVE_SCAN) &&
	    FUNC2(msg, NL80211_FREQUENCY_ATTR_PASSIVE_SCAN))
		goto nla_put_failure;
	if ((chan->flags & IEEE80211_CHAN_NO_IBSS) &&
	    FUNC2(msg, NL80211_FREQUENCY_ATTR_NO_IBSS))
		goto nla_put_failure;
	if (chan->flags & IEEE80211_CHAN_RADAR) {
		if (FUNC2(msg, NL80211_FREQUENCY_ATTR_RADAR))
			goto nla_put_failure;
		if (large) {
			u32 time;

			time = FUNC1(chan->dfs_state_entered);

			if (FUNC3(msg, NL80211_FREQUENCY_ATTR_DFS_STATE,
					chan->dfs_state))
				goto nla_put_failure;
			if (FUNC3(msg, NL80211_FREQUENCY_ATTR_DFS_TIME,
					time))
				goto nla_put_failure;
		}
	}

	if (large) {
		if ((chan->flags & IEEE80211_CHAN_NO_HT40MINUS) &&
		    FUNC2(msg, NL80211_FREQUENCY_ATTR_NO_HT40_MINUS))
			goto nla_put_failure;
		if ((chan->flags & IEEE80211_CHAN_NO_HT40PLUS) &&
		    FUNC2(msg, NL80211_FREQUENCY_ATTR_NO_HT40_PLUS))
			goto nla_put_failure;
		if ((chan->flags & IEEE80211_CHAN_NO_80MHZ) &&
		    FUNC2(msg, NL80211_FREQUENCY_ATTR_NO_80MHZ))
			goto nla_put_failure;
		if ((chan->flags & IEEE80211_CHAN_NO_160MHZ) &&
		    FUNC2(msg, NL80211_FREQUENCY_ATTR_NO_160MHZ))
			goto nla_put_failure;
	}

	if (FUNC3(msg, NL80211_FREQUENCY_ATTR_MAX_TX_POWER,
			FUNC0(chan->max_power)))
		goto nla_put_failure;

	return 0;

 nla_put_failure:
	return -ENOBUFS;
}