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
struct nfs4_setclientid {int /*<<< orphan*/  sc_cb_ident; int /*<<< orphan*/  sc_uaddr; int /*<<< orphan*/  sc_uaddr_len; int /*<<< orphan*/  sc_netid; int /*<<< orphan*/  sc_netid_len; int /*<<< orphan*/  sc_prog; int /*<<< orphan*/  sc_name; int /*<<< orphan*/  sc_name_len; TYPE_1__* sc_verifier; } ;
struct compound_hdr {int /*<<< orphan*/  replen; int /*<<< orphan*/  nops; } ;
typedef  void* __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int NFS4_VERIFIER_SIZE ; 
 int /*<<< orphan*/  OP_SETCLIENTID ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ decode_setclientid_maxsz ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void** FUNC2 (struct xdr_stream*,int) ; 
 int /*<<< orphan*/  FUNC3 (void**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct xdr_stream *xdr, const struct nfs4_setclientid *setclientid, struct compound_hdr *hdr)
{
	__be32 *p;

	p = FUNC2(xdr, 4 + NFS4_VERIFIER_SIZE);
	*p++ = FUNC0(OP_SETCLIENTID);
	FUNC3(p, setclientid->sc_verifier->data, NFS4_VERIFIER_SIZE);

	FUNC1(xdr, setclientid->sc_name_len, setclientid->sc_name);
	p = FUNC2(xdr, 4);
	*p = FUNC0(setclientid->sc_prog);
	FUNC1(xdr, setclientid->sc_netid_len, setclientid->sc_netid);
	FUNC1(xdr, setclientid->sc_uaddr_len, setclientid->sc_uaddr);
	p = FUNC2(xdr, 4);
	*p = FUNC0(setclientid->sc_cb_ident);
	hdr->nops++;
	hdr->replen += decode_setclientid_maxsz;
}