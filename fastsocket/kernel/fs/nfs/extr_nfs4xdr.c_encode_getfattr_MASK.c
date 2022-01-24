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
typedef  int u32 ;
struct xdr_stream {int dummy; } ;
struct compound_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,int const,int const,struct compound_hdr*) ; 
 int const* nfs4_fattr_bitmap ; 

__attribute__((used)) static void FUNC1(struct xdr_stream *xdr, const u32* bitmask, struct compound_hdr *hdr)
{
	FUNC0(xdr, bitmask[0] & nfs4_fattr_bitmap[0],
			   bitmask[1] & nfs4_fattr_bitmap[1], hdr);
}