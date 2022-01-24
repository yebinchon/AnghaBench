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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct page* FUNC0 (int,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (size_t) ; 
 void* FUNC2 (unsigned long,unsigned int,size_t) ; 
 scalar_t__ FUNC3 (struct page*) ; 

void *FUNC4(int nid, size_t size, gfp_t gfp_mask)
{
	unsigned order = FUNC1(size);
	struct page *p = FUNC0(nid, gfp_mask, order);
	if (!p)
		return NULL;
	return FUNC2((unsigned long)FUNC3(p), order, size);
}