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
struct xfrm_state {struct ipcomp_data* data; } ;
struct sk_buff {int len; int /*<<< orphan*/ * data; } ;
struct ipcomp_data {int /*<<< orphan*/  tfms; } ;
struct ip_comp_hdr {int dummy; } ;
struct crypto_comp {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int IPCOMP_SCRATCH_SIZE ; 
 int FUNC0 (struct crypto_comp*,int /*<<< orphan*/ *,int const,int /*<<< orphan*/ *,int*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  ipcomp_scratches ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 void** FUNC5 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct xfrm_state *x, struct sk_buff *skb)
{
	struct ipcomp_data *ipcd = x->data;
	const int plen = skb->len;
	int dlen = IPCOMP_SCRATCH_SIZE;
	u8 *start = skb->data;
	const int cpu = FUNC1();
	u8 *scratch = *FUNC5(ipcomp_scratches, cpu);
	struct crypto_comp *tfm = *FUNC5(ipcd->tfms, cpu);
	int err;

	FUNC2();
	err = FUNC0(tfm, start, plen, scratch, &dlen);
	FUNC3();
	if (err)
		goto out;

	if ((dlen + sizeof(struct ip_comp_hdr)) >= plen) {
		err = -EMSGSIZE;
		goto out;
	}

	FUNC4(start + sizeof(struct ip_comp_hdr), scratch, dlen);
	FUNC7();

	FUNC6(skb, dlen + sizeof(struct ip_comp_hdr));
	return 0;

out:
	FUNC7();
	return err;
}