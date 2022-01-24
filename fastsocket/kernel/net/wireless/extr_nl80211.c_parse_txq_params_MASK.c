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
struct nlattr {int dummy; } ;
struct ieee80211_txq_params {scalar_t__ ac; void* aifs; void* cwmax; void* cwmin; void* txop; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ NL80211_NUM_ACS ; 
 size_t NL80211_TXQ_ATTR_AC ; 
 size_t NL80211_TXQ_ATTR_AIFS ; 
 size_t NL80211_TXQ_ATTR_CWMAX ; 
 size_t NL80211_TXQ_ATTR_CWMIN ; 
 size_t NL80211_TXQ_ATTR_TXOP ; 
 void* FUNC0 (struct nlattr*) ; 
 void* FUNC1 (struct nlattr*) ; 

__attribute__((used)) static int FUNC2(struct nlattr *tb[],
			    struct ieee80211_txq_params *txq_params)
{
	if (!tb[NL80211_TXQ_ATTR_AC] || !tb[NL80211_TXQ_ATTR_TXOP] ||
	    !tb[NL80211_TXQ_ATTR_CWMIN] || !tb[NL80211_TXQ_ATTR_CWMAX] ||
	    !tb[NL80211_TXQ_ATTR_AIFS])
		return -EINVAL;

	txq_params->ac = FUNC1(tb[NL80211_TXQ_ATTR_AC]);
	txq_params->txop = FUNC0(tb[NL80211_TXQ_ATTR_TXOP]);
	txq_params->cwmin = FUNC0(tb[NL80211_TXQ_ATTR_CWMIN]);
	txq_params->cwmax = FUNC0(tb[NL80211_TXQ_ATTR_CWMAX]);
	txq_params->aifs = FUNC1(tb[NL80211_TXQ_ATTR_AIFS]);

	if (txq_params->ac >= NL80211_NUM_ACS)
		return -EINVAL;

	return 0;
}