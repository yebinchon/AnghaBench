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
struct nfs_writeargs {int /*<<< orphan*/  count; int /*<<< orphan*/  pgbase; int /*<<< orphan*/  pages; int /*<<< orphan*/  stable; int /*<<< orphan*/  offset; TYPE_1__ stateid; } ;
struct compound_hdr {int /*<<< orphan*/  replen; int /*<<< orphan*/  nops; } ;
typedef  void* __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_STATEID_SIZE ; 
 int /*<<< orphan*/  OP_WRITE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ decode_write_maxsz ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void** FUNC2 (struct xdr_stream*,int) ; 
 void** FUNC3 (void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct xdr_stream *xdr, const struct nfs_writeargs *args, struct compound_hdr *hdr)
{
	__be32 *p;

	p = FUNC2(xdr, 4);
	*p = FUNC0(OP_WRITE);

	FUNC1(xdr, args->stateid.data, NFS4_STATEID_SIZE);

	p = FUNC2(xdr, 16);
	p = FUNC3(p, args->offset);
	*p++ = FUNC0(args->stable);
	*p = FUNC0(args->count);

	FUNC4(xdr, args->pages, args->pgbase, args->count);
	hdr->nops++;
	hdr->replen += decode_write_maxsz;
}