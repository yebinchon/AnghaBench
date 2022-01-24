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

/* Variables and functions */
 int CAP_ENDPTCTRL ; 
 int EINVAL ; 
 int ENDPTCTRL_RXR ; 
 int ENDPTCTRL_RXS ; 
 int ENDPTCTRL_TXR ; 
 int ENDPTCTRL_TXS ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(int num, int dir, int value)
{
	if (value != 0 && value != 1)
		return -EINVAL;

	do {
		u32 addr = CAP_ENDPTCTRL + num * sizeof(u32);
		u32 mask_xs = dir ? ENDPTCTRL_TXS : ENDPTCTRL_RXS;
		u32 mask_xr = dir ? ENDPTCTRL_TXR : ENDPTCTRL_RXR;

		/* data toggle - reserved for EP0 but it's in ESS */
		FUNC0(addr, mask_xs|mask_xr, value ? mask_xs : mask_xr);

	} while (value != FUNC1(num, dir));

	return 0;
}