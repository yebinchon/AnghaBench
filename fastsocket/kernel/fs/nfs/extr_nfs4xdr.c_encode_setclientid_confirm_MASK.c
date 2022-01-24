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
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct nfs4_setclientid_res {TYPE_1__ confirm; int /*<<< orphan*/  clientid; } ;
struct compound_hdr {int /*<<< orphan*/  replen; int /*<<< orphan*/  nops; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ NFS4_VERIFIER_SIZE ; 
 int /*<<< orphan*/  OP_SETCLIENTID_CONFIRM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ decode_setclientid_confirm_maxsz ; 
 int /*<<< orphan*/ * FUNC1 (struct xdr_stream*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct xdr_stream *xdr, const struct nfs4_setclientid_res *arg, struct compound_hdr *hdr)
{
	__be32 *p;

	p = FUNC1(xdr, 12 + NFS4_VERIFIER_SIZE);
	*p++ = FUNC0(OP_SETCLIENTID_CONFIRM);
	p = FUNC2(p, arg->clientid);
	FUNC3(p, arg->confirm.data, NFS4_VERIFIER_SIZE);
	hdr->nops++;
	hdr->replen += decode_setclientid_confirm_maxsz;
}