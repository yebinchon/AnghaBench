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
typedef  int /*<<< orphan*/  u_int8_t ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  timeout; int /*<<< orphan*/  stream_timeout; } ;
struct TYPE_4__ {TYPE_1__ gre; } ;
struct nf_conn {int status; TYPE_2__ proto; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int /*<<< orphan*/  IPCT_STATUS ; 
 int /*<<< orphan*/  IPS_ASSURED_BIT ; 
 int IPS_SEEN_REPLY ; 
 int NF_ACCEPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conn*,int,struct sk_buff const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct nf_conn *ct,
		      const struct sk_buff *skb,
		      unsigned int dataoff,
		      enum ip_conntrack_info ctinfo,
		      u_int8_t pf,
		      unsigned int hooknum)
{
	/* If we've seen traffic both ways, this is a GRE connection.
	 * Extend timeout. */
	if (ct->status & IPS_SEEN_REPLY) {
		FUNC1(ct, ctinfo, skb,
				   ct->proto.gre.stream_timeout);
		/* Also, more likely to be important, and not a probe. */
		FUNC2(IPS_ASSURED_BIT, &ct->status);
		FUNC0(IPCT_STATUS, ct);
	} else
		FUNC1(ct, ctinfo, skb,
				   ct->proto.gre.timeout);

	return NF_ACCEPT;
}