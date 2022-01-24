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
struct virtio_balloon {size_t num_pfns; int /*<<< orphan*/  inflate_vq; int /*<<< orphan*/  pages; int /*<<< orphan*/  num_pages; int /*<<< orphan*/ * pfns; TYPE_1__* vdev; } ;
struct page {int /*<<< orphan*/  lru; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int GFP_HIGHUSER ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int __GFP_NOMEMALLOC ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 struct page* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct virtio_balloon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  totalram_pages ; 

__attribute__((used)) static void FUNC9(struct virtio_balloon *vb, size_t num)
{
	/* We can only do one array worth at a time. */
	num = FUNC4(num, FUNC0(vb->pfns));

	for (vb->num_pfns = 0; vb->num_pfns < num; vb->num_pfns++) {
		struct page *page = FUNC1(GFP_HIGHUSER | __GFP_NORETRY |
					__GFP_NOMEMALLOC | __GFP_NOWARN);
		if (!page) {
			if (FUNC7())
				FUNC2(KERN_INFO, &vb->vdev->dev,
					   "Out of puff! Can't get %zu pages\n",
					   num);
			/* Sleep for at least 1/5 of a second before retry. */
			FUNC5(200);
			break;
		}
		vb->pfns[vb->num_pfns] = FUNC6(page);
		totalram_pages--;
		vb->num_pages++;
		FUNC3(&page->lru, &vb->pages);
	}

	/* Didn't get any?  Oh well. */
	if (vb->num_pfns == 0)
		return;

	FUNC8(vb, vb->inflate_vq);
}