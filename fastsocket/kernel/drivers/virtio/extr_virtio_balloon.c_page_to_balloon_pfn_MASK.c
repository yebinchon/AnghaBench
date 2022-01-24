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
typedef  unsigned long u32 ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PAGE_SHIFT ; 
 scalar_t__ VIRTIO_BALLOON_PFN_SHIFT ; 
 unsigned long FUNC1 (struct page*) ; 

__attribute__((used)) static u32 FUNC2(struct page *page)
{
	unsigned long pfn = FUNC1(page);

	FUNC0(PAGE_SHIFT < VIRTIO_BALLOON_PFN_SHIFT);
	/* Convert pfn from Linux page size to balloon page size. */
	return pfn >> (PAGE_SHIFT - VIRTIO_BALLOON_PFN_SHIFT);
}