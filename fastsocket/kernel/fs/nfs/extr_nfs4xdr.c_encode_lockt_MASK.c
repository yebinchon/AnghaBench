#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct nfs_lockt_args {int /*<<< orphan*/  lock_owner; TYPE_1__* fl; } ;
struct compound_hdr {int /*<<< orphan*/  replen; int /*<<< orphan*/  nops; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_3__ {int /*<<< orphan*/  fl_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_LOCKT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ decode_lockt_maxsz ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct xdr_stream *xdr, const struct nfs_lockt_args *args, struct compound_hdr *hdr)
{
	__be32 *p;

	p = FUNC4(xdr, 24);
	*p++ = FUNC0(OP_LOCKT);
	*p++ = FUNC0(FUNC3(args->fl, 0));
	p = FUNC5(p, args->fl->fl_start);
	p = FUNC5(p, FUNC2(args->fl));
	FUNC1(xdr, &args->lock_owner);
	hdr->nops++;
	hdr->replen += decode_lockt_maxsz;
}