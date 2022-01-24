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
struct iw_freq {scalar_t__ m; scalar_t__ e; } ;
union iwreq_data {struct iw_freq freq; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ channel; } ;
struct ieee80211_device {TYPE_1__ current_network; } ;

/* Variables and functions */

int FUNC0(struct ieee80211_device *ieee,
			     struct iw_request_info *a,
			     union iwreq_data *wrqu, char *b)
{
	struct iw_freq *fwrq = & wrqu->freq;

	if (ieee->current_network.channel == 0)
		return -1;

	fwrq->m = ieee->current_network.channel;
	fwrq->e = 0;

	return 0;
}