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
struct sk_buff {char* len; } ;
struct nf_conn {TYPE_1__* tuplehash; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_2__ {int /*<<< orphan*/  tuple; } ;
typedef  int /*<<< orphan*/  Q931 ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int FUNC1 (unsigned char*,int,int /*<<< orphan*/ *) ; 
 int H323_ERROR_BOUND ; 
 int IP_CT_ESTABLISHED ; 
 int IP_CT_IS_REPLY ; 
 int NF_ACCEPT ; 
 int NF_DROP ; 
 scalar_t__ FUNC2 (struct sk_buff*,unsigned int,struct nf_conn*,int,unsigned char**,int*,int*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_h323_lock ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (struct sk_buff*,struct nf_conn*,int,unsigned char**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, unsigned int protoff,
		     struct nf_conn *ct, enum ip_conntrack_info ctinfo)
{
	static Q931 q931;
	unsigned char *data = NULL;
	int datalen;
	int dataoff;
	int ret;

	/* Until there's been traffic both ways, don't look in packets. */
	if (ctinfo != IP_CT_ESTABLISHED &&
	    ctinfo != IP_CT_ESTABLISHED + IP_CT_IS_REPLY) {
		return NF_ACCEPT;
	}
	FUNC5("nf_ct_q931: skblen = %u\n", skb->len);

	FUNC8(&nf_h323_lock);

	/* Process each TPKT */
	while (FUNC2(skb, protoff, ct, ctinfo,
			     &data, &datalen, &dataoff)) {
		FUNC5("nf_ct_q931: TPKT len=%d ", datalen);
		FUNC4(&ct->tuplehash[FUNC0(ctinfo)].tuple);

		/* Decode Q.931 signal */
		ret = FUNC1(data, datalen, &q931);
		if (ret < 0) {
			FUNC5("nf_ct_q931: decoding error: %s\n",
				 ret == H323_ERROR_BOUND ?
				 "out of bound" : "out of range");
			/* We don't drop when decoding error */
			break;
		}

		/* Process Q.931 signal */
		if (FUNC7(skb, ct, ctinfo, &data, dataoff, &q931) < 0)
			goto drop;
	}

	FUNC9(&nf_h323_lock);
	return NF_ACCEPT;

      drop:
	FUNC9(&nf_h323_lock);
	if (FUNC3())
		FUNC6("nf_ct_q931: packet dropped\n");
	return NF_DROP;
}