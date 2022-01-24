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
struct fuse_conn {int /*<<< orphan*/  (* release ) (struct fuse_conn*) ;int /*<<< orphan*/  inst_mutex; scalar_t__ destroy_req; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_conn*) ; 

void FUNC4(struct fuse_conn *fc)
{
	if (FUNC0(&fc->count)) {
		if (fc->destroy_req)
			FUNC1(fc->destroy_req);
		FUNC2(&fc->inst_mutex);
		fc->release(fc);
	}
}