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
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int const CB_SUPPORTED_ATTR0 ; 
 int const CB_SUPPORTED_ATTR1 ; 
 int NFS4ERR_RESOURCE ; 
 scalar_t__ FUNC0 (int const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC2 (struct xdr_stream*,int) ; 

__attribute__((used)) static __be32 FUNC3(struct xdr_stream *xdr, const uint32_t *bitmap, __be32 **savep)
{
	__be32 bm[2];
	__be32 *p;

	bm[0] = FUNC0(bitmap[0] & CB_SUPPORTED_ATTR0);
	bm[1] = FUNC0(bitmap[1] & CB_SUPPORTED_ATTR1);
	if (bm[1] != 0) {
		p = FUNC2(xdr, 16);
		if (FUNC1(p == NULL))
			return FUNC0(NFS4ERR_RESOURCE);
		*p++ = FUNC0(2);
		*p++ = bm[0];
		*p++ = bm[1];
	} else if (bm[0] != 0) {
		p = FUNC2(xdr, 12);
		if (FUNC1(p == NULL))
			return FUNC0(NFS4ERR_RESOURCE);
		*p++ = FUNC0(1);
		*p++ = bm[0];
	} else {
		p = FUNC2(xdr, 8);
		if (FUNC1(p == NULL))
			return FUNC0(NFS4ERR_RESOURCE);
		*p++ = FUNC0(0);
	}
	*savep = p;
	return 0;
}