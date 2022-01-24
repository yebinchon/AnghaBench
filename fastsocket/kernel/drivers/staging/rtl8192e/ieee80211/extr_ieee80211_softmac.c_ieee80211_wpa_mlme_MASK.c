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
struct ieee80211_device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  IEEE_MLME_STA_DEAUTH 129 
#define  IEEE_MLME_STA_DISASSOC 128 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static int FUNC2(struct ieee80211_device *ieee, int command, int reason)
{

	int ret = 0;

	switch (command) {
	case IEEE_MLME_STA_DEAUTH:
		// silently ignore
		break;

	case IEEE_MLME_STA_DISASSOC:
		FUNC0(ieee);
		break;

	default:
		FUNC1("Unknown MLME request: %d\n", command);
		ret = -EOPNOTSUPP;
	}

	return ret;
}