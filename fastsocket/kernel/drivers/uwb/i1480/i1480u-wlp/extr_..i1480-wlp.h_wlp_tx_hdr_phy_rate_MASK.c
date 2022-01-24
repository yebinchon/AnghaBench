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
struct wlp_tx_hdr {int phy_params; } ;
typedef  enum uwb_phy_rate { ____Placeholder_uwb_phy_rate } uwb_phy_rate ;

/* Variables and functions */

__attribute__((used)) static inline enum uwb_phy_rate FUNC0(const struct wlp_tx_hdr *hdr)
{
	return hdr->phy_params & 0x0f;
}