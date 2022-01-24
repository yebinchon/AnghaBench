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
struct fuse_req {int /*<<< orphan*/  end; } ;
struct fuse_file {int /*<<< orphan*/  fc; struct fuse_req* reserved_req; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fuse_release_end ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_file*) ; 

__attribute__((used)) static void FUNC3(struct fuse_file *ff)
{
	if (FUNC0(&ff->count)) {
		struct fuse_req *req = ff->reserved_req;

		req->end = fuse_release_end;
		FUNC1(ff->fc, req);
		FUNC2(ff);
	}
}