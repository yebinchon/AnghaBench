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
struct station_parameters {void* vht_capa; void* ht_capa; } ;
struct genl_info {scalar_t__* attrs; } ;

/* Variables and functions */
 size_t NL80211_ATTR_HT_CAPABILITY ; 
 size_t NL80211_ATTR_VHT_CAPABILITY ; 
 int FUNC0 (struct genl_info*,struct station_parameters*) ; 
 void* FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct genl_info *info,
				    struct station_parameters *params)
{
	/* Dummy STA entry gets updated once the peer capabilities are known */
	if (info->attrs[NL80211_ATTR_HT_CAPABILITY])
		params->ht_capa =
			FUNC1(info->attrs[NL80211_ATTR_HT_CAPABILITY]);
	if (info->attrs[NL80211_ATTR_VHT_CAPABILITY])
		params->vht_capa =
			FUNC1(info->attrs[NL80211_ATTR_VHT_CAPABILITY]);

	return FUNC0(info, params);
}