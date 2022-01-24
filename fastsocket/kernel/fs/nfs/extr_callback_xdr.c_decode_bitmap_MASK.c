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
typedef  void* uint32_t ;
struct xdr_stream {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4ERR_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 FUNC5(struct xdr_stream *xdr, uint32_t *bitmap)
{
	__be32 *p;
	unsigned int attrlen;

	p = FUNC3(xdr, 4);
	if (FUNC4(p == NULL))
		return FUNC0(NFS4ERR_RESOURCE);
	attrlen = FUNC2(*p);
	p = FUNC3(xdr, attrlen << 2);
	if (FUNC4(p == NULL))
		return FUNC0(NFS4ERR_RESOURCE);
	if (FUNC1(attrlen > 0))
		bitmap[0] = FUNC2(*p++);
	if (attrlen > 1)
		bitmap[1] = FUNC2(*p);
	return 0;
}