#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct nfs_open_confirmargs {TYPE_2__* seqid; TYPE_3__* stateid; } ;
struct compound_hdr {int /*<<< orphan*/  replen; int /*<<< orphan*/  nops; } ;
typedef  void* __be32 ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
struct TYPE_5__ {TYPE_1__* sequence; } ;
struct TYPE_4__ {int /*<<< orphan*/  counter; } ;

/* Variables and functions */
 scalar_t__ NFS4_STATEID_SIZE ; 
 int /*<<< orphan*/  OP_OPEN_CONFIRM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ decode_open_confirm_maxsz ; 
 void** FUNC1 (struct xdr_stream*,scalar_t__) ; 
 void** FUNC2 (void**,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct xdr_stream *xdr, const struct nfs_open_confirmargs *arg, struct compound_hdr *hdr)
{
	__be32 *p;

	p = FUNC1(xdr, 4+NFS4_STATEID_SIZE+4);
	*p++ = FUNC0(OP_OPEN_CONFIRM);
	p = FUNC2(p, arg->stateid->data, NFS4_STATEID_SIZE);
	*p = FUNC0(arg->seqid->sequence->counter);
	hdr->nops++;
	hdr->replen += decode_open_confirm_maxsz;
}