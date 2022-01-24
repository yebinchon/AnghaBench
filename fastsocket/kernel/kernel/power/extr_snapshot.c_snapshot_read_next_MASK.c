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
struct swsusp_info {int dummy; } ;
struct snapshot_handle {scalar_t__ cur; scalar_t__ prev; scalar_t__ buf_offset; scalar_t__ cur_offset; scalar_t__ offset; void* buffer; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  KM_USER0 ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  PG_ANY ; 
 scalar_t__ FUNC0 (struct page*) ; 
 void* buffer ; 
 int /*<<< orphan*/  copy_bm ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct swsusp_info*) ; 
 void* FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ nr_copy_pages ; 
 scalar_t__ nr_meta_pages ; 
 int /*<<< orphan*/  orig_bm ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ *) ; 
 void* FUNC10 (struct page*) ; 
 struct page* FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(struct snapshot_handle *handle, size_t count)
{
	if (handle->cur > nr_meta_pages + nr_copy_pages)
		return 0;

	if (!buffer) {
		/* This makes the buffer be freed by swsusp_free() */
		buffer = FUNC1(GFP_ATOMIC, PG_ANY);
		if (!buffer)
			return -ENOMEM;
	}
	if (!handle->offset) {
		int error;

		error = FUNC2((struct swsusp_info *)buffer);
		if (error)
			return error;
		handle->buffer = buffer;
		FUNC7(&orig_bm);
		FUNC7(&copy_bm);
	}
	if (handle->prev < handle->cur) {
		if (handle->cur <= nr_meta_pages) {
			FUNC8(buffer, 0, PAGE_SIZE);
			FUNC9(buffer, &orig_bm);
		} else {
			struct page *page;

			page = FUNC11(FUNC6(&copy_bm));
			if (FUNC0(page)) {
				/* Highmem pages are copied to the buffer,
				 * because we can't return with a kmapped
				 * highmem page (we may not be called again).
				 */
				void *kaddr;

				kaddr = FUNC3(page, KM_USER0);
				FUNC5(buffer, kaddr, PAGE_SIZE);
				FUNC4(kaddr, KM_USER0);
				handle->buffer = buffer;
			} else {
				handle->buffer = FUNC10(page);
			}
		}
		handle->prev = handle->cur;
	}
	handle->buf_offset = handle->cur_offset;
	if (handle->cur_offset + count >= PAGE_SIZE) {
		count = PAGE_SIZE - handle->cur_offset;
		handle->cur_offset = 0;
		handle->cur++;
	} else {
		handle->cur_offset += count;
	}
	handle->offset += count;
	return count;
}