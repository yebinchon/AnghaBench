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
struct snapshot_handle {scalar_t__ prev; scalar_t__ cur; scalar_t__ offset; int sync_read; scalar_t__ buf_offset; scalar_t__ cur_offset; void* buffer; } ;
struct chain_allocator {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  PG_ANY ; 
 int /*<<< orphan*/  PG_SAFE ; 
 int FUNC1 (void*) ; 
 void* buffer ; 
 int /*<<< orphan*/  FUNC2 (struct chain_allocator*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  copy_bm ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (int /*<<< orphan*/ *,struct chain_allocator*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (void*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ nr_copy_pages ; 
 scalar_t__ nr_meta_pages ; 
 int /*<<< orphan*/  orig_bm ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * restore_pblist ; 
 int FUNC10 (void*,int /*<<< orphan*/ *) ; 

int FUNC11(struct snapshot_handle *handle, size_t count)
{
	static struct chain_allocator ca;
	int error = 0;

	/* Check if we have already loaded the entire image */
	if (handle->prev && handle->cur > nr_meta_pages + nr_copy_pages)
		return 0;

	if (handle->offset == 0) {
		if (!buffer)
			/* This makes the buffer be freed by swsusp_free() */
			buffer = FUNC5(GFP_ATOMIC, PG_ANY);

		if (!buffer)
			return -ENOMEM;

		handle->buffer = buffer;
	}
	handle->sync_read = 1;
	if (handle->prev < handle->cur) {
		if (handle->prev == 0) {
			error = FUNC6(buffer);
			if (error)
				return error;

			error = FUNC7(&copy_bm, GFP_ATOMIC, PG_ANY);
			if (error)
				return error;

		} else if (handle->prev <= nr_meta_pages) {
			error = FUNC10(buffer, &copy_bm);
			if (error)
				return error;

			if (handle->prev == nr_meta_pages) {
				error = FUNC9(&orig_bm, &copy_bm);
				if (error)
					return error;

				FUNC2(&ca, GFP_ATOMIC, PG_SAFE);
				FUNC8(&orig_bm);
				restore_pblist = NULL;
				handle->buffer = FUNC4(&orig_bm, &ca);
				handle->sync_read = 0;
				if (FUNC0(handle->buffer))
					return FUNC1(handle->buffer);
			}
		} else {
			FUNC3();
			handle->buffer = FUNC4(&orig_bm, &ca);
			if (FUNC0(handle->buffer))
				return FUNC1(handle->buffer);
			if (handle->buffer != buffer)
				handle->sync_read = 0;
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