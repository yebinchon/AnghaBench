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
struct fuse_req {scalar_t__ stolen_file; scalar_t__ waiting; int /*<<< orphan*/  count; } ;
struct fuse_conn {int /*<<< orphan*/  num_waiting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_conn*,struct fuse_req*) ; 

void FUNC4(struct fuse_conn *fc, struct fuse_req *req)
{
	if (FUNC1(&req->count)) {
		if (req->waiting)
			FUNC0(&fc->num_waiting);

		if (req->stolen_file)
			FUNC3(fc, req);
		else
			FUNC2(req);
	}
}