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
struct sk_buff {scalar_t__ data; } ;
struct ipv6hdr {int nexthdr; } ;
struct inet6_protocol {int /*<<< orphan*/  (* err_handler ) (struct sk_buff*,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int MAX_INET_PROTOS ; 
 int /*<<< orphan*/ * inet6_protos ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct sk_buff*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int,int,int,int,int /*<<< orphan*/ ) ; 
 struct inet6_protocol* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct sk_buff *skb, u8 type, u8 code, __be32 info)
{
	const struct inet6_protocol *ipprot;
	int inner_offset;
	int hash;
	u8 nexthdr;

	if (!FUNC2(skb, sizeof(struct ipv6hdr)))
		return;

	nexthdr = ((struct ipv6hdr *)skb->data)->nexthdr;
	if (FUNC0(nexthdr)) {
		/* now skip over extension headers */
		inner_offset = FUNC1(skb, sizeof(struct ipv6hdr), &nexthdr);
		if (inner_offset<0)
			return;
	} else {
		inner_offset = sizeof(struct ipv6hdr);
	}

	/* Checkin header including 8 bytes of inner protocol header. */
	if (!FUNC2(skb, inner_offset+8))
		return;

	/* BUGGG_FUTURE: we should try to parse exthdrs in this packet.
	   Without this we will not able f.e. to make source routed
	   pmtu discovery.
	   Corresponding argument (opt) to notifiers is already added.
	   --ANK (980726)
	 */

	hash = nexthdr & (MAX_INET_PROTOS - 1);

	FUNC5();
	ipprot = FUNC4(inet6_protos[hash]);
	if (ipprot && ipprot->err_handler)
		ipprot->err_handler(skb, NULL, type, code, inner_offset, info);
	FUNC6();

	FUNC3(skb, nexthdr, type, code, inner_offset, info);
}