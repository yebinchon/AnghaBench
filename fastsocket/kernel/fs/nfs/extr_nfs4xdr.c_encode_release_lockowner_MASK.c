#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct nfs_lowner {int dummy; } ;
struct compound_hdr {int /*<<< orphan*/  replen; int /*<<< orphan*/  nops; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  OP_RELEASE_LOCKOWNER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ decode_release_lockowner_maxsz ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,struct nfs_lowner const*) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int) ; 

__attribute__((used)) static void FUNC3(struct xdr_stream *xdr, const struct nfs_lowner *lowner, struct compound_hdr *hdr)
{
	__be32 *p;

	p = FUNC2(xdr, 4);
	*p = FUNC0(OP_RELEASE_LOCKOWNER);
	FUNC1(xdr, lowner);
	hdr->nops++;
	hdr->replen += decode_release_lockowner_maxsz;
}