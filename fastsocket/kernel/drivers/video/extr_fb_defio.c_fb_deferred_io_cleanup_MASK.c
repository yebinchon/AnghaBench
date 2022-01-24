#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int /*<<< orphan*/ * mapping; } ;
struct TYPE_4__ {int smem_len; } ;
struct fb_info {TYPE_1__* fbops; TYPE_2__ fix; int /*<<< orphan*/  deferred_work; struct fb_deferred_io* fbdefio; } ;
struct fb_deferred_io {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/ * fb_mmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct page* FUNC2 (struct fb_info*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct fb_info *info)
{
	struct fb_deferred_io *fbdefio = info->fbdefio;
	struct page *page;
	int i;

	FUNC0(!fbdefio);
	FUNC1(&info->deferred_work);
	FUNC3();

	/* clear out the mapping that we setup */
	for (i = 0 ; i < info->fix.smem_len; i += PAGE_SIZE) {
		page = FUNC2(info, i);
		page->mapping = NULL;
	}

	info->fbops->fb_mmap = NULL;
	FUNC4(&fbdefio->lock);
}