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
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int __GFP_HIGHMEM ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static inline void FUNC3(struct page *page, int order, gfp_t gfp_flags)
{
	int i;

	/*
	 * clear_highpage() will use KM_USER0, so it's a bug to use __GFP_ZERO
	 * and __GFP_HIGHMEM from hard or soft interrupt context.
	 */
	FUNC0((gfp_flags & __GFP_HIGHMEM) && FUNC2());
	for (i = 0; i < (1 << order); i++)
		FUNC1(page + i);
}