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
struct fuse_file {scalar_t__ kh; int /*<<< orphan*/  poll_wait; int /*<<< orphan*/  polled_node; int /*<<< orphan*/  count; int /*<<< orphan*/  write_entry; int /*<<< orphan*/  reserved_req; struct fuse_conn* fc; } ;
struct fuse_conn {int /*<<< orphan*/  lock; scalar_t__ khctr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_file*) ; 
 struct fuse_file* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

struct fuse_file *FUNC10(struct fuse_conn *fc)
{
	struct fuse_file *ff;

	ff = FUNC6(sizeof(struct fuse_file), GFP_KERNEL);
	if (FUNC9(!ff))
		return NULL;

	ff->fc = fc;
	ff->reserved_req = FUNC3(0);
	if (FUNC9(!ff->reserved_req)) {
		FUNC5(ff);
		return NULL;
	}

	FUNC0(&ff->write_entry);
	FUNC2(&ff->count, 0);
	FUNC1(&ff->polled_node);
	FUNC4(&ff->poll_wait);

	FUNC7(&fc->lock);
	ff->kh = ++fc->khctr;
	FUNC8(&fc->lock);

	return ff;
}