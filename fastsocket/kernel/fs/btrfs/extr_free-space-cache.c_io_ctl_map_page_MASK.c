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
struct io_ctl {scalar_t__ index; scalar_t__ num_pages; int /*<<< orphan*/  cur; int /*<<< orphan*/  size; int /*<<< orphan*/  orig; int /*<<< orphan*/  page; int /*<<< orphan*/ * pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct io_ctl *io_ctl, int clear)
{
	FUNC1(io_ctl->cur);
	FUNC0(io_ctl->index >= io_ctl->num_pages);
	io_ctl->page = io_ctl->pages[io_ctl->index++];
	io_ctl->cur = FUNC2(io_ctl->page);
	io_ctl->orig = io_ctl->cur;
	io_ctl->size = PAGE_CACHE_SIZE;
	if (clear)
		FUNC3(io_ctl->cur, 0, PAGE_CACHE_SIZE);
}