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
typedef  int /*<<< orphan*/  RasMessage ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int FUNC1 (unsigned char*,int,int /*<<< orphan*/ *) ; 
 int H323_ERROR_BOUND ; 
 int NF_ACCEPT ; 
 int NF_DROP ; 
 unsigned char* FUNC2 (struct sk_buff*,unsigned int,int*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_h323_lock ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (struct sk_buff*,struct nf_conn*,int,unsigned char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, unsigned int protoff,
		    struct nf_conn *ct, enum ip_conntrack_info ctinfo)
{
	static RasMessage ras;
	unsigned char *data;
	int datalen = 0;
	int ret;

	FUNC5("nf_ct_ras: skblen = %u\n", skb->len);

	FUNC8(&nf_h323_lock);

	/* Get UDP data */
	data = FUNC2(skb, protoff, &datalen);
	if (data == NULL)
		goto accept;
	FUNC5("nf_ct_ras: RAS message len=%d ", datalen);
	FUNC4(&ct->tuplehash[FUNC0(ctinfo)].tuple);

	/* Decode RAS message */
	ret = FUNC1(data, datalen, &ras);
	if (ret < 0) {
		FUNC5("nf_ct_ras: decoding error: %s\n",
			 ret == H323_ERROR_BOUND ?
			 "out of bound" : "out of range");
		goto accept;
	}

	/* Process RAS message */
	if (FUNC7(skb, ct, ctinfo, &data, &ras) < 0)
		goto drop;

      accept:
	FUNC9(&nf_h323_lock);
	return NF_ACCEPT;

      drop:
	FUNC9(&nf_h323_lock);
	if (FUNC3())
		FUNC6("nf_ct_ras: packet dropped\n");
	return NF_DROP;
}