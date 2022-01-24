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
typedef  int /*<<< orphan*/  u32 ;
struct flow_cache_percpu {scalar_t__ hash_rnd_recalc; int /*<<< orphan*/  hash_rnd; } ;
struct flow_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct flow_cache*,struct flow_cache_percpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(struct flow_cache *fc,
			      struct flow_cache_percpu *fcp)
{
	FUNC1(&fcp->hash_rnd, sizeof(u32));
	fcp->hash_rnd_recalc = 0;
	FUNC0(fc, fcp, 0);
}