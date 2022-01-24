#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  union nf_inet_addr {int dummy; } nf_inet_addr ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {unsigned int register_cseq; } ;
struct TYPE_7__ {TYPE_1__ ct_sip_info; } ;
struct nf_conn_help {TYPE_2__ help; } ;
struct nf_conn {TYPE_5__* tuplehash; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_8__ {int /*<<< orphan*/  u3; } ;
struct TYPE_9__ {TYPE_3__ dst; } ;
struct TYPE_10__ {TYPE_4__ tuple; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int NF_ACCEPT ; 
 int NF_DROP ; 
 int /*<<< orphan*/  SIP_HDR_CONTACT ; 
 int /*<<< orphan*/  SIP_HDR_EXPIRES ; 
 scalar_t__ FUNC1 (struct nf_conn*,char const*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 
 int FUNC2 (struct nf_conn*,char const*,unsigned int*,unsigned int,int /*<<< orphan*/ ,int*,unsigned int*,unsigned int*,union nf_inet_addr*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct nf_conn*,char const*,unsigned int,unsigned int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_conn*,int) ; 
 struct nf_conn* FUNC5 (struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,union nf_inet_addr*) ; 
 struct nf_conn_help* FUNC7 (struct nf_conn*) ; 
 scalar_t__ FUNC8 (struct nf_conn*,union nf_inet_addr*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC9 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb,
				     const char **dptr, unsigned int *datalen,
				     unsigned int cseq, unsigned int code)
{
	enum ip_conntrack_info ctinfo;
	struct nf_conn *ct = FUNC5(skb, &ctinfo);
	struct nf_conn_help *help = FUNC7(ct);
	enum ip_conntrack_dir dir = FUNC0(ctinfo);
	union nf_inet_addr addr;
	__be16 port;
	unsigned int matchoff, matchlen, dataoff = 0;
	unsigned int expires = 0;
	int in_contact = 0, ret;

	/* According to RFC 3261, "UAs MUST NOT send a new registration until
	 * they have received a final response from the registrar for the
	 * previous one or the previous REGISTER request has timed out".
	 *
	 * However, some servers fail to detect retransmissions and send late
	 * responses, so we store the sequence number of the last valid
	 * request and compare it here.
	 */
	if (help->help.ct_sip_info.register_cseq != cseq)
		return NF_ACCEPT;

	if (code >= 100 && code <= 199)
		return NF_ACCEPT;
	if (code < 200 || code > 299)
		goto flush;

	if (FUNC1(ct, *dptr, 0, *datalen, SIP_HDR_EXPIRES,
			      &matchoff, &matchlen) > 0)
		expires = FUNC9(*dptr + matchoff, NULL, 10);

	while (1) {
		unsigned int c_expires = expires;

		ret = FUNC2(ct, *dptr, &dataoff, *datalen,
					      SIP_HDR_CONTACT, &in_contact,
					      &matchoff, &matchlen,
					      &addr, &port);
		if (ret < 0)
			return NF_DROP;
		else if (ret == 0)
			break;

		/* We don't support third-party registrations */
		if (!FUNC6(&ct->tuplehash[dir].tuple.dst.u3, &addr))
			continue;

		ret = FUNC3(ct, *dptr,
						   matchoff + matchlen,
						   *datalen, "expires=",
						   NULL, NULL, &c_expires);
		if (ret < 0)
			return NF_DROP;
		if (c_expires == 0)
			break;
		if (FUNC8(ct, &addr, port, c_expires))
			return NF_ACCEPT;
	}

flush:
	FUNC4(ct, false);
	return NF_ACCEPT;
}