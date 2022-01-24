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
struct xdr_stream {int dummy; } ;
struct rpc_rqst {TYPE_1__* rq_cred; } ;
struct rpc_auth {scalar_t__ au_rslack; } ;
struct compound_hdr {scalar_t__ replen; scalar_t__ taglen; int /*<<< orphan*/  nops; void** nops_p; int /*<<< orphan*/  minorversion; int /*<<< orphan*/  tag; } ;
typedef  void* __be32 ;
struct TYPE_2__ {struct rpc_auth* cr_auth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NFS4_MAXTAGLEN ; 
 scalar_t__ RPC_REPHDRSIZE ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 void** FUNC3 (struct xdr_stream*,scalar_t__) ; 
 void** FUNC4 (void**,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct xdr_stream *xdr,
				struct rpc_rqst *req,
				struct compound_hdr *hdr)
{
	__be32 *p;
	struct rpc_auth *auth = req->rq_cred->cr_auth;

	/* initialize running count of expected bytes in reply.
	 * NOTE: the replied tag SHOULD be the same is the one sent,
	 * but this is not required as a MUST for the server to do so. */
	hdr->replen = RPC_REPHDRSIZE + auth->au_rslack + 3 + hdr->taglen;

	FUNC2("encode_compound: tag=%.*s\n", (int)hdr->taglen, hdr->tag);
	FUNC0(hdr->taglen > NFS4_MAXTAGLEN);
	p = FUNC3(xdr, 4 + hdr->taglen + 8);
	p = FUNC4(p, hdr->tag, hdr->taglen);
	*p++ = FUNC1(hdr->minorversion);
	hdr->nops_p = p;
	*p = FUNC1(hdr->nops);
}