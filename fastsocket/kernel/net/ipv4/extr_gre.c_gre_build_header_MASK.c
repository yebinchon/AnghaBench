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
typedef  int /*<<< orphan*/  u8 ;
struct tnl_ptk_info {int flags; scalar_t__ key; scalar_t__ seq; int /*<<< orphan*/  proto; } ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct gre_base_hdr {int /*<<< orphan*/  protocol; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  __sum16 ;
typedef  scalar_t__ __be32 ;
struct TYPE_2__ {int gso_type; } ;

/* Variables and functions */
 int SKB_GSO_GRE ; 
 int TUNNEL_CSUM ; 
 int TUNNEL_KEY ; 
 int TUNNEL_SEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(struct sk_buff *skb, const struct tnl_ptk_info *tpi,
		      int hdr_len)
{
	struct gre_base_hdr *greh;

	FUNC2(skb, hdr_len);

	greh = (struct gre_base_hdr *)skb->data;
	greh->flags = FUNC4(tpi->flags);
	greh->protocol = tpi->proto;

	if (tpi->flags&(TUNNEL_KEY|TUNNEL_CSUM|TUNNEL_SEQ)) {
		__be32 *ptr = (__be32 *)(((u8 *)greh) + hdr_len - 4);

		if (tpi->flags&TUNNEL_SEQ) {
			*ptr = tpi->seq;
			ptr--;
		}
		if (tpi->flags&TUNNEL_KEY) {
			*ptr = tpi->key;
			ptr--;
		}
		if (tpi->flags&TUNNEL_CSUM &&
		    !(FUNC3(skb)->gso_type & SKB_GSO_GRE)) {
			*ptr = 0;
			*(__sum16 *)ptr = FUNC0(FUNC1(skb, 0,
								 skb->len, 0));
		}
	}
}