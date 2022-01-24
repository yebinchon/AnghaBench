#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_hdr {int /*<<< orphan*/  seq_ctrl; } ;
struct TYPE_3__ {int* sequence; } ;
struct TYPE_4__ {TYPE_1__ wlan; } ;

/* Variables and functions */
 int IEEE80211_SCTL_SEQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__ fw ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ieee80211_hdr *hdr, unsigned int vif)
{
	hdr->seq_ctrl &= FUNC0(~IEEE80211_SCTL_SEQ);
	hdr->seq_ctrl |= FUNC0(fw.wlan.sequence[vif]);

	if (FUNC1(hdr->seq_ctrl))
		fw.wlan.sequence[vif] += 0x10;
}