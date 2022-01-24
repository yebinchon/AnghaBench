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
 int __GFP_COMP ; 
 int __GFP_NOTRACK ; 
 struct page* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t,int,int) ; 
 void* FUNC3 (struct page*) ; 

__attribute__((used)) static void *FUNC4(size_t size, gfp_t flags, int node)
{
	struct page *page;
	void *ptr = NULL;

	flags |= __GFP_COMP | __GFP_NOTRACK;
	page = FUNC0(node, flags, FUNC1(size));
	if (page)
		ptr = FUNC3(page);

	FUNC2(ptr, size, 1, flags);
	return ptr;
}