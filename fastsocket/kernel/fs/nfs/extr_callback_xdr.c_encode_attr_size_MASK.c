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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct xdr_stream {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int const FATTR4_WORD0_SIZE ; 
 int /*<<< orphan*/  NFS4ERR_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,int) ; 

__attribute__((used)) static __be32 FUNC4(struct xdr_stream *xdr, const uint32_t *bitmap, uint64_t size)
{
	__be32 *p;

	if (!(bitmap[0] & FATTR4_WORD0_SIZE))
		return 0;
	p = FUNC3(xdr, 8);
	if (FUNC1(!p))
		return FUNC0(NFS4ERR_RESOURCE);
	p = FUNC2(p, size);
	return 0;
}