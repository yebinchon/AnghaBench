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
struct compound_hdr {int /*<<< orphan*/  replen; int /*<<< orphan*/  nops; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  OP_GETFH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ decode_getfh_maxsz ; 
 int /*<<< orphan*/ * FUNC1 (struct xdr_stream*,int) ; 

__attribute__((used)) static void FUNC2(struct xdr_stream *xdr, struct compound_hdr *hdr)
{
	__be32 *p;

	p = FUNC1(xdr, 4);
	*p = FUNC0(OP_GETFH);
	hdr->nops++;
	hdr->replen += decode_getfh_maxsz;
}