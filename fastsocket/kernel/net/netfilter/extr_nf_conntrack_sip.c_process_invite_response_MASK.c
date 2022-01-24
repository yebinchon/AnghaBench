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
struct sk_buff {int dummy; } ;
struct TYPE_4__ {unsigned int invite_cseq; } ;
struct TYPE_3__ {TYPE_2__ ct_sip_info; } ;
struct nf_conn_help {TYPE_1__ help; } ;
struct nf_conn {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int NF_ACCEPT ; 
 int /*<<< orphan*/  FUNC0 (struct nf_conn*,int) ; 
 struct nf_conn* FUNC1 (struct sk_buff*,int*) ; 
 struct nf_conn_help* FUNC2 (struct nf_conn*) ; 
 int FUNC3 (struct sk_buff*,char const**,unsigned int*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb,
				   const char **dptr, unsigned int *datalen,
				   unsigned int cseq, unsigned int code)
{
	enum ip_conntrack_info ctinfo;
	struct nf_conn *ct = FUNC1(skb, &ctinfo);
	struct nf_conn_help *help = FUNC2(ct);

	if ((code >= 100 && code <= 199) ||
	    (code >= 200 && code <= 299))
		return FUNC3(skb, dptr, datalen, cseq);
	else if (help->help.ct_sip_info.invite_cseq == cseq)
		FUNC0(ct, true);
	return NF_ACCEPT;
}