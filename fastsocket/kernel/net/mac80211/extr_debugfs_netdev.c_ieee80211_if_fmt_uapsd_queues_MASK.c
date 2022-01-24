#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_if_managed {int uapsd_queues; } ;
struct TYPE_2__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 

__attribute__((used)) static ssize_t FUNC1(
	const struct ieee80211_sub_if_data *sdata, char *buf, int buflen)
{
	const struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;

	return FUNC0(buf, buflen, "0x%x\n", ifmgd->uapsd_queues);
}