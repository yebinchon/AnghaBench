#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
struct ipv6_opt_hdr {int /*<<< orphan*/  hdrlen; } ;
typedef  struct ipv6_opt_hdr u8 ;
typedef  int u16 ;
struct xt_match_param {int* hotdrop; TYPE_1__* match; struct ip6t_opts* matchinfo; } ;
struct sk_buff {unsigned int len; } ;
struct ip6t_opts {unsigned int hdrlen; int flags; int invflags; unsigned int optsnr; int* opts; } ;
typedef  int /*<<< orphan*/  _opttype ;
typedef  int /*<<< orphan*/  _optsh ;
typedef  int /*<<< orphan*/  _optlen ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int ENOENT ; 
 int IP6T_OPTS_INV_LEN ; 
 int IP6T_OPTS_LEN ; 
 int IP6T_OPTS_OPTS ; 
 int FUNC0 (struct sk_buff const*,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct ipv6_opt_hdr const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 void* FUNC3 (struct sk_buff const*,unsigned int,int,struct ipv6_opt_hdr*) ; 

__attribute__((used)) static bool
FUNC4(const struct sk_buff *skb, const struct xt_match_param *par)
{
	struct ipv6_opt_hdr _optsh;
	const struct ipv6_opt_hdr *oh;
	const struct ip6t_opts *optinfo = par->matchinfo;
	unsigned int temp;
	unsigned int ptr = 0;
	unsigned int hdrlen = 0;
	bool ret = false;
	u8 _opttype;
	u8 _optlen;
	const u_int8_t *tp = NULL;
	const u_int8_t *lp = NULL;
	unsigned int optlen;
	int err;

	err = FUNC0(skb, &ptr, par->match->data, NULL, NULL);
	if (err < 0) {
		if (err != -ENOENT)
			*par->hotdrop = true;
		return false;
	}

	oh = FUNC3(skb, ptr, sizeof(_optsh), &_optsh);
	if (oh == NULL) {
		*par->hotdrop = true;
		return false;
	}

	hdrlen = FUNC1(oh);
	if (skb->len - ptr < hdrlen) {
		/* Packet smaller than it's length field */
		return false;
	}

	FUNC2("IPv6 OPTS LEN %u %u ", hdrlen, oh->hdrlen);

	FUNC2("len %02X %04X %02X ",
		 optinfo->hdrlen, hdrlen,
		 (!(optinfo->flags & IP6T_OPTS_LEN) ||
		  ((optinfo->hdrlen == hdrlen) ^
		   !!(optinfo->invflags & IP6T_OPTS_INV_LEN))));

	ret = (oh != NULL) &&
	      (!(optinfo->flags & IP6T_OPTS_LEN) ||
	       ((optinfo->hdrlen == hdrlen) ^
		!!(optinfo->invflags & IP6T_OPTS_INV_LEN)));

	ptr += 2;
	hdrlen -= 2;
	if (!(optinfo->flags & IP6T_OPTS_OPTS)) {
		return ret;
	} else {
		FUNC2("Strict ");
		FUNC2("#%d ", optinfo->optsnr);
		for (temp = 0; temp < optinfo->optsnr; temp++) {
			/* type field exists ? */
			if (hdrlen < 1)
				break;
			tp = FUNC3(skb, ptr, sizeof(_opttype),
						&_opttype);
			if (tp == NULL)
				break;

			/* Type check */
			if (*tp != (optinfo->opts[temp] & 0xFF00) >> 8) {
				FUNC2("Tbad %02X %02X\n", *tp,
					 (optinfo->opts[temp] & 0xFF00) >> 8);
				return false;
			} else {
				FUNC2("Tok ");
			}
			/* Length check */
			if (*tp) {
				u16 spec_len;

				/* length field exists ? */
				if (hdrlen < 2)
					break;
				lp = FUNC3(skb, ptr + 1,
							sizeof(_optlen),
							&_optlen);
				if (lp == NULL)
					break;
				spec_len = optinfo->opts[temp] & 0x00FF;

				if (spec_len != 0x00FF && spec_len != *lp) {
					FUNC2("Lbad %02X %04X\n", *lp,
						 spec_len);
					return false;
				}
				FUNC2("Lok ");
				optlen = *lp + 2;
			} else {
				FUNC2("Pad1\n");
				optlen = 1;
			}

			/* Step to the next */
			FUNC2("len%04X \n", optlen);

			if ((ptr > skb->len - optlen || hdrlen < optlen) &&
			    temp < optinfo->optsnr - 1) {
				FUNC2("new pointer is too large! \n");
				break;
			}
			ptr += optlen;
			hdrlen -= optlen;
		}
		if (temp == optinfo->optsnr)
			return ret;
		else
			return false;
	}

	return false;
}