#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct nfs_pageio_descriptor {int /*<<< orphan*/  pg_lseg; } ;
struct nfs_page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  stripe_unit; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_pageio_descriptor*,struct nfs_page*,struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_pageio_descriptor*,struct nfs_page*,struct nfs_page*) ; 
 scalar_t__ FUNC4 (struct nfs_page*) ; 

__attribute__((used)) static bool
FUNC5(struct nfs_pageio_descriptor *pgio, struct nfs_page *prev,
		   struct nfs_page *req)
{
	u64 p_stripe, r_stripe;
	u32 stripe_unit;

	if (!FUNC3(pgio, prev, req) ||
	    !FUNC2(pgio, prev, req))
		return false;

	p_stripe = (u64)FUNC4(prev);
	r_stripe = (u64)FUNC4(req);
	stripe_unit = FUNC0(pgio->pg_lseg)->stripe_unit;

	FUNC1(p_stripe, stripe_unit);
	FUNC1(r_stripe, stripe_unit);

	return (p_stripe == r_stripe);
}