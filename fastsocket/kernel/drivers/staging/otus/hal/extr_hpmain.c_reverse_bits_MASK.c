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
typedef  int u8_t ;
typedef  int u32_t ;

/* Variables and functions */

u32_t FUNC0(u32_t chan_sel)
{
	/* reverse_bits */
    u32_t chansel = 0;
	u8_t i;

	for (i=0; i<8; i++)
        chansel |= ((chan_sel>>(7-i) & 0x1) << i);
	return chansel;
}