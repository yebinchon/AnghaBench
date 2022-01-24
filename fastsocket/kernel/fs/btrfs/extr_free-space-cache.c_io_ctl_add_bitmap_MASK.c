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
struct io_ctl {scalar_t__ cur; scalar_t__ orig; scalar_t__ index; scalar_t__ num_pages; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct io_ctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct io_ctl*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct io_ctl *io_ctl, void *bitmap)
{
	if (!io_ctl->cur)
		return -ENOSPC;

	/*
	 * If we aren't at the start of the current page, unmap this one and
	 * map the next one if there is any left.
	 */
	if (io_ctl->cur != io_ctl->orig) {
		FUNC1(io_ctl, io_ctl->index - 1);
		if (io_ctl->index >= io_ctl->num_pages)
			return -ENOSPC;
		FUNC0(io_ctl, 0);
	}

	FUNC2(io_ctl->cur, bitmap, PAGE_CACHE_SIZE);
	FUNC1(io_ctl, io_ctl->index - 1);
	if (io_ctl->index < io_ctl->num_pages)
		FUNC0(io_ctl, 0);
	return 0;
}