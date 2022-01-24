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
typedef  scalar_t__ u32 ;
struct ieee80211_rx_stats {scalar_t__ RxBufShift; scalar_t__ RxDrvInfoSize; } ;
typedef  int /*<<< orphan*/  rx_desc_819x_usb ;

/* Variables and functions */

u32 FUNC0(struct ieee80211_rx_stats *pstats)
{

		return (sizeof(rx_desc_819x_usb) + pstats->RxDrvInfoSize
				+ pstats->RxBufShift);

}