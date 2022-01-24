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
typedef  scalar_t__ u8 ;
typedef  int u16 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

u16 FUNC2(u16 FrameLength, u16 DataRate, u8 bManagementFrame,
		  u8 bShortPreamble)
{
	u16	FrameTime;
	u16	N_DBPS;
	u16	Ceiling;

	if (FUNC1(DataRate)) {
		if (bManagementFrame || !bShortPreamble || DataRate == 10)
			/* long preamble */
			FrameTime = (u16)(144+48+(FrameLength*8/(DataRate/10)));
		else
			/* short preamble */
			FrameTime = (u16)(72+24+(FrameLength*8/(DataRate/10)));

		if ((FrameLength*8 % (DataRate/10)) != 0) /* get the ceilling */
			FrameTime++;
	} else {	/* 802.11g DSSS-OFDM PLCP length field calculation. */
		N_DBPS = FUNC0(DataRate);
		Ceiling = (16 + 8*FrameLength + 6) / N_DBPS
				+ (((16 + 8*FrameLength + 6) % N_DBPS) ? 1 : 0);
		FrameTime = (u16)(16 + 4 + 4*Ceiling + 6);
	}
	return FrameTime;
}