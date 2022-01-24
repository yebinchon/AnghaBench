#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct slab {int dummy; } ;
struct TYPE_2__ {scalar_t__ prev; } ;
struct page {TYPE_1__ lru; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 

__attribute__((used)) static inline struct slab *FUNC2(struct page *page)
{
	FUNC0(!FUNC1(page));
	return (struct slab *)page->lru.prev;
}