#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct nfs_locku_args {TYPE_4__* fl; TYPE_3__* stateid; TYPE_2__* seqid; } ;
struct compound_hdr {int /*<<< orphan*/  replen; int /*<<< orphan*/  nops; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_9__ {int /*<<< orphan*/  fl_start; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
struct TYPE_7__ {TYPE_1__* sequence; } ;
struct TYPE_6__ {int /*<<< orphan*/  counter; } ;

/* Variables and functions */
 scalar_t__ NFS4_STATEID_SIZE ; 
 int /*<<< orphan*/  OP_LOCKU ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ decode_locku_maxsz ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct xdr_stream *xdr, const struct nfs_locku_args *args, struct compound_hdr *hdr)
{
	__be32 *p;

	p = FUNC3(xdr, 12+NFS4_STATEID_SIZE+16);
	*p++ = FUNC0(OP_LOCKU);
	*p++ = FUNC0(FUNC2(args->fl, 0));
	*p++ = FUNC0(args->seqid->sequence->counter);
	p = FUNC5(p, args->stateid->data, NFS4_STATEID_SIZE);
	p = FUNC4(p, args->fl->fl_start);
	FUNC4(p, FUNC1(args->fl));
	hdr->nops++;
	hdr->replen += decode_locku_maxsz;
}