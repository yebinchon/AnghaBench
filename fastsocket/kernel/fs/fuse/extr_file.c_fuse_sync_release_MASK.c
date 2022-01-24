#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fuse_file {TYPE_1__* reserved_req; int /*<<< orphan*/  fc; int /*<<< orphan*/  count; } ;
struct TYPE_3__ {int force; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUSE_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_file*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_file*) ; 

void FUNC6(struct fuse_file *ff, int flags)
{
	FUNC0(FUNC1(&ff->count) > 1);
	FUNC2(ff, flags, FUSE_RELEASE);
	ff->reserved_req->force = 1;
	FUNC4(ff->fc, ff->reserved_req);
	FUNC3(ff->fc, ff->reserved_req);
	FUNC5(ff);
}