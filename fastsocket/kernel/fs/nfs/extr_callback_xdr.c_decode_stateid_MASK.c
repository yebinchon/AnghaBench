#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ nfs4_stateid ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4ERR_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 FUNC4(struct xdr_stream *xdr, nfs4_stateid *stateid)
{
	__be32 *p;

	p = FUNC2(xdr, 16);
	if (FUNC3(p == NULL))
		return FUNC0(NFS4ERR_RESOURCE);
	FUNC1(stateid->data, p, 16);
	return 0;
}