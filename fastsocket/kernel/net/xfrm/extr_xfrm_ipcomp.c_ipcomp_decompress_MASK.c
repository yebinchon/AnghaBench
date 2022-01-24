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
typedef  int /*<<< orphan*/  u8 ;
struct xfrm_state {struct ipcomp_data* data; } ;
struct sk_buff {int len; int truesize; int data_len; int /*<<< orphan*/ * data; } ;
struct ipcomp_data {int /*<<< orphan*/  tfms; } ;
struct ip_comp_hdr {int dummy; } ;
struct crypto_comp {int dummy; } ;
struct TYPE_3__ {int size; scalar_t__ page_offset; int /*<<< orphan*/  page; } ;
typedef  TYPE_1__ skb_frag_t ;
struct TYPE_4__ {scalar_t__ nr_frags; TYPE_1__* frags; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IPCOMP_SCRATCH_SIZE ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct crypto_comp*,int /*<<< orphan*/  const*,int const,int /*<<< orphan*/ *,int*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  ipcomp_scratches ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void** FUNC7 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC10 (struct sk_buff*) ; 
 int FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC12(struct xfrm_state *x, struct sk_buff *skb)
{
	struct ipcomp_data *ipcd = x->data;
	const int plen = skb->len;
	int dlen = IPCOMP_SCRATCH_SIZE;
	const u8 *start = skb->data;
	const int cpu = FUNC4();
	u8 *scratch = *FUNC7(ipcomp_scratches, cpu);
	struct crypto_comp *tfm = *FUNC7(ipcd->tfms, cpu);
	int err = FUNC3(tfm, start, plen, scratch, &dlen);
	int len;

	if (err)
		goto out;

	if (dlen < (plen + sizeof(struct ip_comp_hdr))) {
		err = -EINVAL;
		goto out;
	}

	len = dlen - plen;
	if (len > FUNC11(skb))
		len = FUNC11(skb);

	FUNC1(skb, len);

	len += plen;
	FUNC9(skb, scratch, len);

	while ((scratch += len, dlen -= len) > 0) {
		skb_frag_t *frag;

		err = -EMSGSIZE;
		if (FUNC0(FUNC10(skb)->nr_frags >= MAX_SKB_FRAGS))
			goto out;

		frag = FUNC10(skb)->frags + FUNC10(skb)->nr_frags;
		frag->page = FUNC2(GFP_ATOMIC);

		err = -ENOMEM;
		if (!frag->page)
			goto out;

		len = PAGE_SIZE;
		if (dlen < len)
			len = dlen;

		FUNC5(FUNC6(frag->page), scratch, len);

		frag->page_offset = 0;
		frag->size = len;
		skb->truesize += len;
		skb->data_len += len;
		skb->len += len;

		FUNC10(skb)->nr_frags++;
	}

	err = 0;

out:
	FUNC8();
	return err;
}