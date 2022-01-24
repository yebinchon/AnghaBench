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
struct xt_match_param {int* hotdrop; struct ip6t_ah* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ip_auth_hdr {int hdrlen; unsigned int reserved; int /*<<< orphan*/  spi; } ;
struct ip6t_ah {int invflags; unsigned int hdrlen; unsigned int hdrres; int /*<<< orphan*/ * spis; } ;
typedef  int /*<<< orphan*/  _ah ;

/* Variables and functions */
 int ENOENT ; 
 int IP6T_AH_INV_LEN ; 
 int IP6T_AH_INV_SPI ; 
 int /*<<< orphan*/  NEXTHDR_AUTH ; 
 int FUNC0 (struct sk_buff const*,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,...) ; 
 struct ip_auth_hdr* FUNC3 (struct sk_buff const*,unsigned int,int,struct ip_auth_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC5(const struct sk_buff *skb, const struct xt_match_param *par)
{
	struct ip_auth_hdr _ah;
	const struct ip_auth_hdr *ah;
	const struct ip6t_ah *ahinfo = par->matchinfo;
	unsigned int ptr = 0;
	unsigned int hdrlen = 0;
	int err;

	err = FUNC0(skb, &ptr, NEXTHDR_AUTH, NULL, NULL);
	if (err < 0) {
		if (err != -ENOENT)
			*par->hotdrop = true;
		return false;
	}

	ah = FUNC3(skb, ptr, sizeof(_ah), &_ah);
	if (ah == NULL) {
		*par->hotdrop = true;
		return false;
	}

	hdrlen = (ah->hdrlen + 2) << 2;

	FUNC2("IPv6 AH LEN %u %u ", hdrlen, ah->hdrlen);
	FUNC2("RES %04X ", ah->reserved);
	FUNC2("SPI %u %08X\n", FUNC1(ah->spi), FUNC1(ah->spi));

	FUNC2("IPv6 AH spi %02X ",
		 FUNC4(ahinfo->spis[0], ahinfo->spis[1],
			   FUNC1(ah->spi),
			   !!(ahinfo->invflags & IP6T_AH_INV_SPI)));
	FUNC2("len %02X %04X %02X ",
		 ahinfo->hdrlen, hdrlen,
		 (!ahinfo->hdrlen ||
		  (ahinfo->hdrlen == hdrlen) ^
		  !!(ahinfo->invflags & IP6T_AH_INV_LEN)));
	FUNC2("res %02X %04X %02X\n",
		 ahinfo->hdrres, ah->reserved,
		 !(ahinfo->hdrres && ah->reserved));

	return (ah != NULL)
	       &&
	       FUNC4(ahinfo->spis[0], ahinfo->spis[1],
			 FUNC1(ah->spi),
			 !!(ahinfo->invflags & IP6T_AH_INV_SPI))
	       &&
	       (!ahinfo->hdrlen ||
		(ahinfo->hdrlen == hdrlen) ^
		!!(ahinfo->invflags & IP6T_AH_INV_LEN))
	       &&
	       !(ahinfo->hdrres && ah->reserved);
}