#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
union nf_inet_addr {scalar_t__ ip; } ;
struct sk_buff {int dummy; } ;
struct nf_conn {TYPE_10__* tuplehash; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
typedef  scalar_t__ __be16 ;
struct TYPE_17__ {scalar_t__ port; } ;
struct TYPE_18__ {TYPE_6__ udp; } ;
struct TYPE_13__ {scalar_t__ ip; } ;
struct TYPE_19__ {TYPE_7__ u; TYPE_2__ u3; } ;
struct TYPE_14__ {scalar_t__ port; } ;
struct TYPE_15__ {TYPE_3__ udp; } ;
struct TYPE_12__ {scalar_t__ ip; } ;
struct TYPE_16__ {TYPE_4__ u; TYPE_1__ u3; } ;
struct TYPE_20__ {TYPE_8__ src; TYPE_5__ dst; } ;
struct TYPE_11__ {TYPE_9__ tuple; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 unsigned int NF_ACCEPT ; 
 unsigned int NF_DROP ; 
 int /*<<< orphan*/  SIP_HDR_CONTACT ; 
 int /*<<< orphan*/  SIP_HDR_FROM ; 
 int /*<<< orphan*/  SIP_HDR_TO ; 
 int /*<<< orphan*/  SIP_HDR_VIA ; 
 scalar_t__ FUNC1 (struct nf_conn*,char const*,unsigned int,unsigned int,char*,unsigned int*,unsigned int*,union nf_inet_addr*) ; 
 scalar_t__ FUNC2 (struct nf_conn*,char const*,unsigned int*,unsigned int,int /*<<< orphan*/ ,int*,unsigned int*,unsigned int*,union nf_inet_addr*,scalar_t__*) ; 
 scalar_t__ FUNC3 (struct nf_conn*,char const*,unsigned int,unsigned int,char*,unsigned int*,unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC4 (struct nf_conn*,char const*,unsigned int,unsigned int*,unsigned int*,union nf_inet_addr*,scalar_t__*) ; 
 scalar_t__ FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,char const**,unsigned int*,unsigned int,unsigned int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,char const**,unsigned int*,unsigned int,unsigned int,union nf_inet_addr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,char const**,unsigned int*,int /*<<< orphan*/ ) ; 
 struct nf_conn* FUNC9 (struct sk_buff*,int*) ; 
 int FUNC10 (scalar_t__) ; 
 unsigned int FUNC11 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC14(struct sk_buff *skb,
			       const char **dptr, unsigned int *datalen)
{
	enum ip_conntrack_info ctinfo;
	struct nf_conn *ct = FUNC9(skb, &ctinfo);
	enum ip_conntrack_dir dir = FUNC0(ctinfo);
	unsigned int dataoff, matchoff, matchlen;
	union nf_inet_addr addr;
	__be16 port;
	int request, in_header;

	/* Basic rules: requests and responses. */
	if (FUNC13(*dptr, "SIP/2.0", FUNC12("SIP/2.0")) != 0) {
		if (FUNC4(ct, *dptr, *datalen,
					 &matchoff, &matchlen,
					 &addr, &port) > 0 &&
		    !FUNC7(skb, dptr, datalen, matchoff, matchlen,
			      &addr, port))
			return NF_DROP;
		request = 1;
	} else
		request = 0;

	/* Translate topmost Via header and parameters */
	if (FUNC2(ct, *dptr, NULL, *datalen,
				    SIP_HDR_VIA, NULL, &matchoff, &matchlen,
				    &addr, &port) > 0) {
		unsigned int matchend, poff, plen, buflen, n;
		char buffer[sizeof("nnn.nnn.nnn.nnn:nnnnn")];

		/* We're only interested in headers related to this
		 * connection */
		if (request) {
			if (addr.ip != ct->tuplehash[dir].tuple.src.u3.ip ||
			    port != ct->tuplehash[dir].tuple.src.u.udp.port)
				goto next;
		} else {
			if (addr.ip != ct->tuplehash[dir].tuple.dst.u3.ip ||
			    port != ct->tuplehash[dir].tuple.dst.u.udp.port)
				goto next;
		}

		if (!FUNC7(skb, dptr, datalen, matchoff, matchlen,
			      &addr, port))
			return NF_DROP;

		matchend = matchoff + matchlen;

		/* The maddr= parameter (RFC 2361) specifies where to send
		 * the reply. */
		if (FUNC1(ct, *dptr, matchend, *datalen,
					       "maddr=", &poff, &plen,
					       &addr) > 0 &&
		    addr.ip == ct->tuplehash[dir].tuple.src.u3.ip &&
		    addr.ip != ct->tuplehash[!dir].tuple.dst.u3.ip) {
			buflen = FUNC11(buffer, "%pI4",
					&ct->tuplehash[!dir].tuple.dst.u3.ip);
			if (!FUNC6(skb, dptr, datalen, poff, plen,
					   buffer, buflen))
				return NF_DROP;
		}

		/* The received= parameter (RFC 2361) contains the address
		 * from which the server received the request. */
		if (FUNC1(ct, *dptr, matchend, *datalen,
					       "received=", &poff, &plen,
					       &addr) > 0 &&
		    addr.ip == ct->tuplehash[dir].tuple.dst.u3.ip &&
		    addr.ip != ct->tuplehash[!dir].tuple.src.u3.ip) {
			buflen = FUNC11(buffer, "%pI4",
					&ct->tuplehash[!dir].tuple.src.u3.ip);
			if (!FUNC6(skb, dptr, datalen, poff, plen,
					   buffer, buflen))
				return NF_DROP;
		}

		/* The rport= parameter (RFC 3581) contains the port number
		 * from which the server received the request. */
		if (FUNC3(ct, *dptr, matchend, *datalen,
						 "rport=", &poff, &plen,
						 &n) > 0 &&
		    FUNC5(n) == ct->tuplehash[dir].tuple.dst.u.udp.port &&
		    FUNC5(n) != ct->tuplehash[!dir].tuple.src.u.udp.port) {
			__be16 p = ct->tuplehash[!dir].tuple.src.u.udp.port;
			buflen = FUNC11(buffer, "%u", FUNC10(p));
			if (!FUNC6(skb, dptr, datalen, poff, plen,
					   buffer, buflen))
				return NF_DROP;
		}
	}

next:
	/* Translate Contact headers */
	dataoff = 0;
	in_header = 0;
	while (FUNC2(ct, *dptr, &dataoff, *datalen,
				       SIP_HDR_CONTACT, &in_header,
				       &matchoff, &matchlen,
				       &addr, &port) > 0) {
		if (!FUNC7(skb, dptr, datalen, matchoff, matchlen,
			      &addr, port))
			return NF_DROP;
	}

	if (!FUNC8(skb, dptr, datalen, SIP_HDR_FROM) ||
	    !FUNC8(skb, dptr, datalen, SIP_HDR_TO))
		return NF_DROP;
	return NF_ACCEPT;
}