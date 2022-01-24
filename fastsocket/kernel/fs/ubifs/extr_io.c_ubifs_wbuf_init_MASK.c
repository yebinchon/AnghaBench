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
struct TYPE_2__ {int /*<<< orphan*/  function; } ;
struct ubifs_wbuf {int lnum; int offs; int avail; unsigned long long delta; int /*<<< orphan*/  softlimit; TYPE_1__ timer; scalar_t__ next_ino; struct ubifs_info* c; int /*<<< orphan*/  lock; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/ * sync_callback; int /*<<< orphan*/  dtype; scalar_t__ used; int /*<<< orphan*/ * buf; void* inodes; } ;
struct ubifs_info {size_t min_io_size; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int UBIFS_CH_SZ ; 
 int /*<<< orphan*/  UBI_UNKNOWN ; 
 unsigned long long ULONG_MAX ; 
 unsigned long long WBUF_TIMEOUT_HARDLIMIT ; 
 unsigned long long WBUF_TIMEOUT_SOFTLIMIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  wbuf_timer_callback_nolock ; 

int FUNC7(struct ubifs_info *c, struct ubifs_wbuf *wbuf)
{
	size_t size;

	wbuf->buf = FUNC2(c->min_io_size, GFP_KERNEL);
	if (!wbuf->buf)
		return -ENOMEM;

	size = (c->min_io_size / UBIFS_CH_SZ + 1) * sizeof(ino_t);
	wbuf->inodes = FUNC2(size, GFP_KERNEL);
	if (!wbuf->inodes) {
		FUNC1(wbuf->buf);
		wbuf->buf = NULL;
		return -ENOMEM;
	}

	wbuf->used = 0;
	wbuf->lnum = wbuf->offs = -1;
	wbuf->avail = c->min_io_size;
	wbuf->dtype = UBI_UNKNOWN;
	wbuf->sync_callback = NULL;
	FUNC4(&wbuf->io_mutex);
	FUNC5(&wbuf->lock);
	wbuf->c = c;
	wbuf->next_ino = 0;

	FUNC0(&wbuf->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
	wbuf->timer.function = wbuf_timer_callback_nolock;
	wbuf->softlimit = FUNC3(WBUF_TIMEOUT_SOFTLIMIT, 0);
	wbuf->delta = WBUF_TIMEOUT_HARDLIMIT - WBUF_TIMEOUT_SOFTLIMIT;
	wbuf->delta *= 1000000000ULL;
	FUNC6(wbuf->delta <= ULONG_MAX);
	return 0;
}