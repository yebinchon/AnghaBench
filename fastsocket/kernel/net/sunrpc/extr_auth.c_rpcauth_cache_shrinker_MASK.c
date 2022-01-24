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
struct shrinker {int dummy; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cred_unused ; 
 int /*<<< orphan*/  free ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpc_credcache_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct shrinker *shrink, int nr_to_scan, gfp_t gfp_mask)
{
	FUNC0(free);
	int res;

	if ((gfp_mask & GFP_KERNEL) != GFP_KERNEL)
		return (nr_to_scan == 0) ? 0 : -1;
	if (FUNC1(&cred_unused))
		return 0;
	FUNC4(&rpc_credcache_lock);
	res = FUNC3(&free, nr_to_scan);
	FUNC5(&rpc_credcache_lock);
	FUNC2(&free);
	return res;
}