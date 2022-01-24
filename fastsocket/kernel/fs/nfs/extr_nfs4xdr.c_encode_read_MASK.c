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
struct nfs_readargs {int /*<<< orphan*/  count; int /*<<< orphan*/  offset; TYPE_1__ stateid; } ;
struct compound_hdr {int /*<<< orphan*/  replen; int /*<<< orphan*/  nops; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_STATEID_SIZE ; 
 int /*<<< orphan*/  OP_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ decode_read_maxsz ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct xdr_stream *xdr, const struct nfs_readargs *args, struct compound_hdr *hdr)
{
	__be32 *p;

	p = FUNC2(xdr, 4);
	*p = FUNC0(OP_READ);

	FUNC1(xdr, args->stateid.data, NFS4_STATEID_SIZE);

	p = FUNC2(xdr, 12);
	p = FUNC3(p, args->offset);
	*p = FUNC0(args->count);
	hdr->nops++;
	hdr->replen += decode_read_maxsz;
}