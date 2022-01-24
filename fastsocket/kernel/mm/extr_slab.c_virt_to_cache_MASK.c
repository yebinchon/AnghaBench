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

/* Variables and functions */
 struct kmem_cache* FUNC0 (struct page*) ; 
 struct page* FUNC1 (void const*) ; 

__attribute__((used)) static inline struct kmem_cache *FUNC2(const void *obj)
{
	struct page *page = FUNC1(obj);
	return FUNC0(page);
}