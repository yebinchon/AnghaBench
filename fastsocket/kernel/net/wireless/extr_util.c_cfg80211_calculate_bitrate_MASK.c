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
typedef  int u32 ;
struct rate_info {int flags; int legacy; int mcs; } ;

/* Variables and functions */
 int RATE_INFO_FLAGS_40_MHZ_WIDTH ; 
 int RATE_INFO_FLAGS_60G ; 
 int RATE_INFO_FLAGS_MCS ; 
 int RATE_INFO_FLAGS_SHORT_GI ; 
 int RATE_INFO_FLAGS_VHT_MCS ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct rate_info*) ; 
 int FUNC2 (struct rate_info*) ; 

u32 FUNC3(struct rate_info *rate)
{
	int modulation, streams, bitrate;

	if (!(rate->flags & RATE_INFO_FLAGS_MCS) &&
	    !(rate->flags & RATE_INFO_FLAGS_VHT_MCS))
		return rate->legacy;
	if (rate->flags & RATE_INFO_FLAGS_60G)
		return FUNC1(rate);
	if (rate->flags & RATE_INFO_FLAGS_VHT_MCS)
		return FUNC2(rate);

	/* the formula below does only work for MCS values smaller than 32 */
	if (FUNC0(rate->mcs >= 32))
		return 0;

	modulation = rate->mcs & 7;
	streams = (rate->mcs >> 3) + 1;

	bitrate = (rate->flags & RATE_INFO_FLAGS_40_MHZ_WIDTH) ?
			13500000 : 6500000;

	if (modulation < 4)
		bitrate *= (modulation + 1);
	else if (modulation == 4)
		bitrate *= (modulation + 2);
	else
		bitrate *= (modulation + 3);

	bitrate *= streams;

	if (rate->flags & RATE_INFO_FLAGS_SHORT_GI)
		bitrate = (bitrate / 9) * 10;

	/* do NOT round down here */
	return (bitrate + 50000) / 100000;
}