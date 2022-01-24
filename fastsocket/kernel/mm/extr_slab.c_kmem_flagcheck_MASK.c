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
struct kmem_cache {int gfpflags; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CONFIG_ZONE_DMA_FLAG ; 
 int GFP_DMA ; 

__attribute__((used)) static void FUNC1(struct kmem_cache *cachep, gfp_t flags)
{
	if (CONFIG_ZONE_DMA_FLAG) {
		if (flags & GFP_DMA)
			FUNC0(!(cachep->gfpflags & GFP_DMA));
		else
			FUNC0(cachep->gfpflags & GFP_DMA);
	}
}