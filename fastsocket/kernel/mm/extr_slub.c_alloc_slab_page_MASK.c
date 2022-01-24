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
struct page {int dummy; } ;
struct kmem_cache_order_objects {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  __GFP_NOTRACK ; 
 struct page* FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct page* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct kmem_cache_order_objects) ; 

__attribute__((used)) static inline struct page *FUNC3(gfp_t flags, int node,
					struct kmem_cache_order_objects oo)
{
	int order = FUNC2(oo);

	flags |= __GFP_NOTRACK;

	if (node == -1)
		return FUNC0(flags, order);
	else
		return FUNC1(node, flags, order);
}