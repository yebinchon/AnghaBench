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
struct untd_hdr {int type; } ;

/* Variables and functions */

__attribute__((used)) static inline void FUNC0(struct untd_hdr *hdr, int rx_tx)
{
	hdr->type = (hdr->type & ~0x04) | (rx_tx << 2);
}