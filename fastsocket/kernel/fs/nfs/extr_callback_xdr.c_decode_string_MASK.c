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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4ERR_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 FUNC4(struct xdr_stream *xdr, unsigned int *len, const char **str)
{
	__be32 *p;

	p = FUNC2(xdr, 4);
	if (FUNC3(p == NULL))
		return FUNC0(NFS4ERR_RESOURCE);
	*len = FUNC1(*p);

	if (*len != 0) {
		p = FUNC2(xdr, *len);
		if (FUNC3(p == NULL))
			return FUNC0(NFS4ERR_RESOURCE);
		*str = (const char *)p;
	} else
		*str = NULL;

	return 0;
}