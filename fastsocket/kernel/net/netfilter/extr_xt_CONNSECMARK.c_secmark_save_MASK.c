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
struct sk_buff {scalar_t__ secmark; } ;
struct nf_conn {scalar_t__ secmark; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int /*<<< orphan*/  IPCT_SECMARK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nf_conn*) ; 
 struct nf_conn* FUNC1 (struct sk_buff const*,int*) ; 

__attribute__((used)) static void FUNC2(const struct sk_buff *skb)
{
	if (skb->secmark) {
		struct nf_conn *ct;
		enum ip_conntrack_info ctinfo;

		ct = FUNC1(skb, &ctinfo);
		if (ct && !ct->secmark) {
			ct->secmark = skb->secmark;
			FUNC0(IPCT_SECMARK, ct);
		}
	}
}