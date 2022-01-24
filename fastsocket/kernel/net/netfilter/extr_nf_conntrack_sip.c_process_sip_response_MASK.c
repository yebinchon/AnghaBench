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
struct sk_buff {int dummy; } ;
struct sip_handler {int (* response ) (struct sk_buff*,char const**,unsigned int*,unsigned int,unsigned int) ;unsigned int len; int /*<<< orphan*/  method; } ;
struct nf_conn {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 unsigned int FUNC0 (struct sip_handler*) ; 
 int NF_ACCEPT ; 
 int NF_DROP ; 
 int /*<<< orphan*/  SIP_HDR_CSEQ ; 
 scalar_t__ FUNC1 (struct nf_conn*,char const*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 
 struct nf_conn* FUNC2 (struct sk_buff*,int*) ; 
 unsigned int FUNC3 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sip_handler* sip_handlers ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC6 (struct sk_buff*,char const**,unsigned int*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb,
				const char **dptr, unsigned int *datalen)
{
	enum ip_conntrack_info ctinfo;
	struct nf_conn *ct = FUNC2(skb, &ctinfo);
	unsigned int matchoff, matchlen;
	unsigned int code, cseq, dataoff, i;

	if (*datalen < FUNC4("SIP/2.0 200"))
		return NF_ACCEPT;
	code = FUNC3(*dptr + FUNC4("SIP/2.0 "), NULL, 10);
	if (!code)
		return NF_DROP;

	if (FUNC1(ct, *dptr, 0, *datalen, SIP_HDR_CSEQ,
			      &matchoff, &matchlen) <= 0)
		return NF_DROP;
	cseq = FUNC3(*dptr + matchoff, NULL, 10);
	if (!cseq)
		return NF_DROP;
	dataoff = matchoff + matchlen + 1;

	for (i = 0; i < FUNC0(sip_handlers); i++) {
		const struct sip_handler *handler;

		handler = &sip_handlers[i];
		if (handler->response == NULL)
			continue;
		if (*datalen < dataoff + handler->len ||
		    FUNC5(*dptr + dataoff, handler->method, handler->len))
			continue;
		return handler->response(skb, dptr, datalen, cseq, code);
	}
	return NF_ACCEPT;
}