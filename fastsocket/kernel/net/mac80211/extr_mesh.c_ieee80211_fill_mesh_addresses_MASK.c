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
typedef  int /*<<< orphan*/  u8 ;
struct ieee80211_hdr {int /*<<< orphan*/  addr4; int /*<<< orphan*/  addr3; int /*<<< orphan*/  addr2; int /*<<< orphan*/  addr1; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int IEEE80211_FCTL_FROMDS ; 
 int IEEE80211_FCTL_TODS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct ieee80211_hdr *hdr, __le16 *fc,
				  const u8 *meshda, const u8 *meshsa)
{
	if (FUNC1(meshda)) {
		*fc |= FUNC0(IEEE80211_FCTL_FROMDS);
		/* DA TA SA */
		FUNC2(hdr->addr1, meshda, ETH_ALEN);
		FUNC2(hdr->addr2, meshsa, ETH_ALEN);
		FUNC2(hdr->addr3, meshsa, ETH_ALEN);
		return 24;
	} else {
		*fc |= FUNC0(IEEE80211_FCTL_FROMDS | IEEE80211_FCTL_TODS);
		/* RA TA DA SA */
		FUNC3(hdr->addr1, 0, ETH_ALEN);   /* RA is resolved later */
		FUNC2(hdr->addr2, meshsa, ETH_ALEN);
		FUNC2(hdr->addr3, meshda, ETH_ALEN);
		FUNC2(hdr->addr4, meshsa, ETH_ALEN);
		return 30;
	}
}