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
struct ieee80211_rx_status {int flag; } ;

/* Variables and functions */
 int RX_FLAG_MACTIME_END ; 
 int RX_FLAG_MACTIME_START ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline bool
FUNC1(struct ieee80211_rx_status *status)
{
	FUNC0(status->flag & RX_FLAG_MACTIME_START &&
		     status->flag & RX_FLAG_MACTIME_END);
	return status->flag & (RX_FLAG_MACTIME_START | RX_FLAG_MACTIME_END);
}