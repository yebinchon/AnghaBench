#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct TYPE_4__ {struct page* page; scalar_t__ base_ni; scalar_t__ actx; scalar_t__ is_in_root; scalar_t__ entry; } ;
typedef  TYPE_1__ ntfs_index_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  ntfs_index_ctx_cache ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void FUNC7(ntfs_index_context *ictx)
{
	if (ictx->entry) {
		if (ictx->is_in_root) {
			if (ictx->actx)
				FUNC3(ictx->actx);
			if (ictx->base_ni)
				FUNC6(ictx->base_ni);
		} else {
			struct page *page = ictx->page;
			if (page) {
				FUNC0(!FUNC1(page));
				FUNC5(page);
				FUNC4(page);
			}
		}
	}
	FUNC2(ntfs_index_ctx_cache, ictx);
	return;
}