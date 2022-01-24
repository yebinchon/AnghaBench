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
struct nfs_setattrargs {int /*<<< orphan*/  iap; TYPE_1__ stateid; } ;
struct nfs_server {int dummy; } ;
struct compound_hdr {int /*<<< orphan*/  replen; int /*<<< orphan*/  nops; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ NFS4_STATEID_SIZE ; 
 int /*<<< orphan*/  OP_SETATTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ decode_setattr_maxsz ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ,struct nfs_server const*) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct xdr_stream *xdr, const struct nfs_setattrargs *arg, const struct nfs_server *server, struct compound_hdr *hdr)
{
	__be32 *p;

	p = FUNC2(xdr, 4+NFS4_STATEID_SIZE);
	*p++ = FUNC0(OP_SETATTR);
	FUNC3(p, arg->stateid.data, NFS4_STATEID_SIZE);
	hdr->nops++;
	hdr->replen += decode_setattr_maxsz;
	FUNC1(xdr, arg->iap, server);
}