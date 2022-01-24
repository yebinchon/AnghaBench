#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ a4; } ;
typedef  TYPE_3__ xfrm_address_t ;
typedef  int u8 ;
struct TYPE_6__ {scalar_t__ a4; } ;
struct TYPE_7__ {scalar_t__ mode; TYPE_1__ saddr; } ;
struct xfrm_state {TYPE_2__ props; struct xfrm_encap_tmpl* encap; struct esp_data* data; } ;
struct xfrm_encap_tmpl {scalar_t__ encap_sport; } ;
struct udphdr {scalar_t__ source; } ;
struct sk_buff {int len; int /*<<< orphan*/  ip_summed; } ;
struct iphdr {int ihl; scalar_t__ saddr; } ;
struct ip_esp_hdr {int dummy; } ;
struct esp_data {struct crypto_aead* aead; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  tmp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int EINVAL ; 
 TYPE_5__* FUNC1 (struct sk_buff*) ; 
 int IPPROTO_NONE ; 
 scalar_t__ XFRM_MODE_TRANSPORT ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int FUNC3 (struct crypto_aead*) ; 
 int FUNC4 (struct crypto_aead*) ; 
 struct iphdr* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xfrm_state*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int,int*,int) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 scalar_t__ FUNC12 (int) ; 
 struct xfrm_state* FUNC13 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC14(struct sk_buff *skb, int err)
{
	struct iphdr *iph;
	struct xfrm_state *x = FUNC13(skb);
	struct esp_data *esp = x->data;
	struct crypto_aead *aead = esp->aead;
	int alen = FUNC3(aead);
	int hlen = sizeof(struct ip_esp_hdr) + FUNC4(aead);
	int elen = skb->len - hlen;
	int ihl;
	u8 nexthdr[2];
	int padlen;

	FUNC6(FUNC1(skb)->tmp);

	if (FUNC12(err))
		goto out;

	if (FUNC9(skb, skb->len-alen-2, nexthdr, 2))
		FUNC0();

	err = -EINVAL;
	padlen = nexthdr[0];
	if (padlen + 2 + alen >= elen)
		goto out;

	/* ... check padding bits here. Silly. :-) */

	iph = FUNC5(skb);
	ihl = iph->ihl * 4;

	if (x->encap) {
		struct xfrm_encap_tmpl *encap = x->encap;
		struct udphdr *uh = (void *)(FUNC10(skb) + ihl);

		/*
		 * 1) if the NAT-T peer's IP or port changed then
		 *    advertize the change to the keying daemon.
		 *    This is an inbound SA, so just compare
		 *    SRC ports.
		 */
		if (iph->saddr != x->props.saddr.a4 ||
		    uh->source != encap->encap_sport) {
			xfrm_address_t ipaddr;

			ipaddr.a4 = iph->saddr;
			FUNC7(x, &ipaddr, uh->source);

			/* XXX: perhaps add an extra
			 * policy check here, to see
			 * if we should allow or
			 * reject a packet from a
			 * different source
			 * address/port.
			 */
		}

		/*
		 * 2) ignore UDP/TCP checksums in case
		 *    of NAT-T in Transport Mode, or
		 *    perform other post-processing fixes
		 *    as per draft-ietf-ipsec-udp-encaps-06,
		 *    section 3.1.2
		 */
		if (x->props.mode == XFRM_MODE_TRANSPORT)
			skb->ip_summed = CHECKSUM_UNNECESSARY;
	}

	FUNC8(skb, skb->len - alen - padlen - 2);
	FUNC2(skb, hlen);
	FUNC11(skb, -ihl);

	err = nexthdr[1];

	/* RFC4303: Drop dummy packets without any error */
	if (err == IPPROTO_NONE)
		err = -EINVAL;

out:
	return err;
}