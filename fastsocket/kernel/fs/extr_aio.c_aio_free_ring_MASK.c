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
struct aio_ring_info {long nr_pages; scalar_t__ nr; int /*<<< orphan*/ * ring_pages; int /*<<< orphan*/ * internal_pages; scalar_t__ mmap_size; int /*<<< orphan*/  mmap_base; } ;
struct kioctx {TYPE_1__* mm; struct aio_ring_info ring_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct kioctx *ctx)
{
	struct aio_ring_info *info = &ctx->ring_info;
	long i;

	for (i=0; i<info->nr_pages; i++)
		FUNC3(info->ring_pages[i]);

	if (info->mmap_size) {
		FUNC1(&ctx->mm->mmap_sem);
		FUNC0(ctx->mm, info->mmap_base, info->mmap_size);
		FUNC4(&ctx->mm->mmap_sem);
	}

	if (info->ring_pages && info->ring_pages != info->internal_pages)
		FUNC2(info->ring_pages);
	info->ring_pages = NULL;
	info->nr = 0;
}