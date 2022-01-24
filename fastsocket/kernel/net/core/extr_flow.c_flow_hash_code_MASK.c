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
struct flowi {int dummy; } ;
struct flow_cache_percpu {int /*<<< orphan*/  hash_rnd; } ;
struct flow_cache {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct flow_cache*) ; 
 int FUNC1 (int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC2(struct flow_cache *fc,
			  struct flow_cache_percpu *fcp,
			  struct flowi *key)
{
	u32 *k = (u32 *) key;

	return (FUNC1(k, (sizeof(*key) / sizeof(u32)), fcp->hash_rnd)
		& (FUNC0(fc) - 1));
}