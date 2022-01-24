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
struct tlvtype_proc {unsigned char const type; int /*<<< orphan*/  (* func ) (struct sk_buff*,int) ;} ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
#define  IPV6_TLV_PAD0 129 
#define  IPV6_TLV_PADN 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 unsigned char* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*) ; 
 int* FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC8(struct tlvtype_proc *procs, struct sk_buff *skb)
{
	struct tlvtype_proc *curr;
	const unsigned char *nh = FUNC3(skb);
	int off = FUNC4(skb);
	int len = (FUNC5(skb)[1] + 1) << 3;

	if (FUNC6(skb) + len > FUNC2(skb))
		goto bad;

	off += 2;
	len -= 2;

	while (len > 0) {
		int optlen = nh[off + 1] + 2;

		switch (nh[off]) {
		case IPV6_TLV_PAD0:
			optlen = 1;
			break;

		case IPV6_TLV_PADN:
			break;

		default: /* Other TLV code so scan list */
			if (optlen > len)
				goto bad;
			for (curr=procs; curr->type >= 0; curr++) {
				if (curr->type == nh[off]) {
					/* type specific length/alignment
					   checks will be performed in the
					   func(). */
					if (curr->func(skb, off) == 0)
						return 0;
					break;
				}
			}
			if (curr->type < 0) {
				if (FUNC0(skb, off) == 0)
					return 0;
			}
			break;
		}
		off += optlen;
		len -= optlen;
	}
	if (len == 0)
		return 1;
bad:
	FUNC1(skb);
	return 0;
}