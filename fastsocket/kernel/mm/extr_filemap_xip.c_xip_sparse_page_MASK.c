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

/* Variables and functions */
 int GFP_HIGHUSER ; 
 int __GFP_ZERO ; 
 struct page* __xip_sparse_page ; 
 struct page* FUNC0 (int) ; 

__attribute__((used)) static struct page *FUNC1(void)
{
	if (!__xip_sparse_page) {
		struct page *page = FUNC0(GFP_HIGHUSER | __GFP_ZERO);

		if (page)
			__xip_sparse_page = page;
	}
	return __xip_sparse_page;
}