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
typedef  int /*<<< orphan*/  u_int8_t ;
struct sk_buff {int dummy; } ;
struct nf_conn {int /*<<< orphan*/  status; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int /*<<< orphan*/  IPCT_STATUS ; 
 int /*<<< orphan*/  IPS_ASSURED_BIT ; 
 int /*<<< orphan*/  IPS_SEEN_REPLY_BIT ; 
 int NF_ACCEPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conn*,int,struct sk_buff const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nf_ct_udplite_timeout ; 
 int /*<<< orphan*/  nf_ct_udplite_timeout_stream ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct nf_conn *ct,
			  const struct sk_buff *skb,
			  unsigned int dataoff,
			  enum ip_conntrack_info ctinfo,
			  u_int8_t pf,
			  unsigned int hooknum)
{
	/* If we've seen traffic both ways, this is some kind of UDP
	   stream.  Extend timeout. */
	if (FUNC3(IPS_SEEN_REPLY_BIT, &ct->status)) {
		FUNC1(ct, ctinfo, skb,
				   nf_ct_udplite_timeout_stream);
		/* Also, more likely to be important, and not a probe */
		if (!FUNC2(IPS_ASSURED_BIT, &ct->status))
			FUNC0(IPCT_STATUS, ct);
	} else
		FUNC1(ct, ctinfo, skb, nf_ct_udplite_timeout);

	return NF_ACCEPT;
}