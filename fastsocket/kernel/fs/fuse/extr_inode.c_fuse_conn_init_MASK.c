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
struct fuse_conn {int blocked; int attr_version; int /*<<< orphan*/  scramble_key; scalar_t__ reqctr; int /*<<< orphan*/  polled_files; scalar_t__ khctr; int /*<<< orphan*/  congestion_threshold; int /*<<< orphan*/  max_background; int /*<<< orphan*/  num_waiting; int /*<<< orphan*/  entry; int /*<<< orphan*/  bg_queue; int /*<<< orphan*/  interrupts; int /*<<< orphan*/  io; int /*<<< orphan*/  processing; int /*<<< orphan*/  pending; int /*<<< orphan*/  reserved_req_waitq; int /*<<< orphan*/  blocked_waitq; int /*<<< orphan*/  waitq; int /*<<< orphan*/  count; int /*<<< orphan*/  killsb; int /*<<< orphan*/  inst_mutex; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUSE_DEFAULT_CONGESTION_THRESHOLD ; 
 int /*<<< orphan*/  FUSE_DEFAULT_MAX_BACKGROUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_conn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct fuse_conn *fc)
{
	FUNC5(fc, 0, sizeof(*fc));
	FUNC7(&fc->lock);
	FUNC6(&fc->inst_mutex);
	FUNC3(&fc->killsb);
	FUNC1(&fc->count, 1);
	FUNC4(&fc->waitq);
	FUNC4(&fc->blocked_waitq);
	FUNC4(&fc->reserved_req_waitq);
	FUNC0(&fc->pending);
	FUNC0(&fc->processing);
	FUNC0(&fc->io);
	FUNC0(&fc->interrupts);
	FUNC0(&fc->bg_queue);
	FUNC0(&fc->entry);
	FUNC1(&fc->num_waiting, 0);
	fc->max_background = FUSE_DEFAULT_MAX_BACKGROUND;
	fc->congestion_threshold = FUSE_DEFAULT_CONGESTION_THRESHOLD;
	fc->khctr = 0;
	fc->polled_files = RB_ROOT;
	fc->reqctr = 0;
	fc->blocked = 1;
	fc->attr_version = 1;
	FUNC2(&fc->scramble_key, sizeof(fc->scramble_key));
}