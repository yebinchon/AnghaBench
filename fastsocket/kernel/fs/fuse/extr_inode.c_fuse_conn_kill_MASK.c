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
struct fuse_conn {int /*<<< orphan*/  entry; int /*<<< orphan*/  reserved_req_waitq; int /*<<< orphan*/  blocked_waitq; int /*<<< orphan*/  waitq; int /*<<< orphan*/  fasync; int /*<<< orphan*/  lock; scalar_t__ blocked; scalar_t__ connected; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC0 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_conn*) ; 
 int /*<<< orphan*/  fuse_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct fuse_conn *fc)
{
	FUNC6(&fc->lock);
	fc->connected = 0;
	fc->blocked = 0;
	FUNC7(&fc->lock);
	/* Flush all readers on this fs */
	FUNC2(&fc->fasync, SIGIO, POLL_IN);
	FUNC8(&fc->waitq);
	FUNC8(&fc->blocked_waitq);
	FUNC8(&fc->reserved_req_waitq);
	FUNC4(&fuse_mutex);
	FUNC3(&fc->entry);
	FUNC1(fc);
	FUNC5(&fuse_mutex);
	FUNC0(fc);
}