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
struct xdr_skb_reader {int offset; int count; int /*<<< orphan*/  csum; struct sk_buff* skb; } ;
struct xdr_buf {int dummy; } ;
struct udphdr {int dummy; } ;
struct sk_buff {int len; scalar_t__ ip_summed; int /*<<< orphan*/  dev; int /*<<< orphan*/  csum; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  __wsum ;

/* Variables and functions */
 scalar_t__ CHECKSUM_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct xdr_buf*,int /*<<< orphan*/ ,struct xdr_skb_reader*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xdr_skb_read_and_csum_bits ; 
 int /*<<< orphan*/  xdr_skb_read_bits ; 

int FUNC8(struct xdr_buf *xdr, struct sk_buff *skb)
{
	struct xdr_skb_reader	desc;

	desc.skb = skb;
	desc.offset = sizeof(struct udphdr);
	desc.count = skb->len - desc.offset;

	if (FUNC5(skb))
		goto no_checksum;

	desc.csum = FUNC2(skb->data, desc.offset, skb->csum);
	if (FUNC7(xdr, 0, &desc, xdr_skb_read_and_csum_bits) < 0)
		return -1;
	if (desc.offset != skb->len) {
		__wsum csum2;
		csum2 = FUNC4(skb, desc.offset, skb->len - desc.offset, 0);
		desc.csum = FUNC0(desc.csum, csum2, desc.offset);
	}
	if (desc.count)
		return -1;
	if (FUNC1(desc.csum))
		return -1;
	if (FUNC6(skb->ip_summed == CHECKSUM_COMPLETE))
		FUNC3(skb->dev);
	return 0;
no_checksum:
	if (FUNC7(xdr, 0, &desc, xdr_skb_read_bits) < 0)
		return -1;
	if (desc.count)
		return -1;
	return 0;
}