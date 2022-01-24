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
struct skb_pool {int /*<<< orphan*/  recyc_list; int /*<<< orphan*/  free_list; } ;
struct sk_buff {scalar_t__ pool_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct skb_pool* FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  skb_pools ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC9 () ; 

__attribute__((used)) static inline void FUNC10(struct sk_buff *skb)
{
	struct skb_pool *skb_pool;

	FUNC0(skb->pool_id < 0);

	skb_pool = FUNC7(skb_pools, skb->pool_id);

	if (FUNC4(skb->pool_id == FUNC9())) {
		if (FUNC3()) {
			FUNC2(&skb_pool->free_list, skb);
		} else {
			FUNC5();
			FUNC2(&skb_pool->free_list, skb);
			FUNC6();
		}
		FUNC1("Free pool skb[%d] 0x%p on CPU %d into free list\n", skb->pool_id, skb, FUNC9());
	} else {
		FUNC8(&skb_pool->recyc_list, skb);
		FUNC1("Free pool skb[%d] 0x%p on CPU %d into recycle list\n", skb->pool_id, skb, FUNC9());
	}
}