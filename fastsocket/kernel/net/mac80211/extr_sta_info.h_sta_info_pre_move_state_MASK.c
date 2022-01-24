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
struct sta_info {int dummy; } ;
typedef  enum ieee80211_sta_state { ____Placeholder_ieee80211_sta_state } ieee80211_sta_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WLAN_STA_INSERTED ; 
 int FUNC1 (struct sta_info*,int) ; 
 int FUNC2 (struct sta_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct sta_info *sta,
					   enum ieee80211_sta_state new_state)
{
	int ret;

	FUNC0(FUNC2(sta, WLAN_STA_INSERTED));

	ret = FUNC1(sta, new_state);
	FUNC0(ret);
}