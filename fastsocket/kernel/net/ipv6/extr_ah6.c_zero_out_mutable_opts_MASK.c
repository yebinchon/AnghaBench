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
typedef  int u8 ;
struct ipv6_opt_hdr {int dummy; } ;

/* Variables and functions */
#define  IPV6_TLV_PAD0 128 
 int FUNC0 (struct ipv6_opt_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct ipv6_opt_hdr *opthdr)
{
	u8 *opt = (u8 *)opthdr;
	int len = FUNC0(opthdr);
	int off = 0;
	int optlen = 0;

	off += 2;
	len -= 2;

	while (len > 0) {

		switch (opt[off]) {

		case IPV6_TLV_PAD0:
			optlen = 1;
			break;
		default:
			if (len < 2)
				goto bad;
			optlen = opt[off+1]+2;
			if (len < optlen)
				goto bad;
			if (opt[off] & 0x20)
				FUNC1(&opt[off+2], 0, opt[off+1]);
			break;
		}

		off += optlen;
		len -= optlen;
	}
	if (len == 0)
		return 1;

bad:
	return 0;
}