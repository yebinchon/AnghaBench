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
struct fuse_req {int locked; scalar_t__ aborted; } ;
struct fuse_conn {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct fuse_conn *fc, struct fuse_req *req)
{
	int err = 0;
	if (req) {
		FUNC0(&fc->lock);
		if (req->aborted)
			err = -ENOENT;
		else
			req->locked = 1;
		FUNC1(&fc->lock);
	}
	return err;
}