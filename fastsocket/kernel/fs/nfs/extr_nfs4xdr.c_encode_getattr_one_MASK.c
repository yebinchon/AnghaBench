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
typedef  int uint32_t ;
struct xdr_stream {int dummy; } ;
struct compound_hdr {int /*<<< orphan*/  replen; int /*<<< orphan*/  nops; } ;
typedef  void* __be32 ;

/* Variables and functions */
 int OP_GETATTR ; 
 void* FUNC0 (int) ; 
 scalar_t__ decode_getattr_maxsz ; 
 void** FUNC1 (struct xdr_stream*,int) ; 

__attribute__((used)) static void FUNC2(struct xdr_stream *xdr, uint32_t bitmap, struct compound_hdr *hdr)
{
	__be32 *p;

	p = FUNC1(xdr, 12);
	*p++ = FUNC0(OP_GETATTR);
	*p++ = FUNC0(1);
	*p = FUNC0(bitmap);
	hdr->nops++;
	hdr->replen += decode_getattr_maxsz;
}