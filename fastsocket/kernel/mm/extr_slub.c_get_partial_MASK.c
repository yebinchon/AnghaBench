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
struct kmem_cache {int dummy; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int __GFP_THISNODE ; 
 struct page* FUNC0 (struct kmem_cache*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kmem_cache*,int) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 

__attribute__((used)) static struct page *FUNC4(struct kmem_cache *s, gfp_t flags, int node)
{
	struct page *page;
	int searchnode = (node == -1) ? FUNC3() : node;

	page = FUNC2(FUNC1(s, searchnode));
	if (page || (flags & __GFP_THISNODE))
		return page;

	return FUNC0(s, flags);
}