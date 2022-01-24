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
struct fuse_req {int background; int /*<<< orphan*/  list; } ;
struct fuse_conn {scalar_t__ num_background; scalar_t__ max_background; int blocked; scalar_t__ congestion_threshold; int /*<<< orphan*/  bg_queue; int /*<<< orphan*/  bdi; scalar_t__ bdi_initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_RW_ASYNC ; 
 int /*<<< orphan*/  BLK_RW_SYNC ; 
 int /*<<< orphan*/  FUNC0 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fuse_conn *fc,
					    struct fuse_req *req)
{
	req->background = 1;
	fc->num_background++;
	if (fc->num_background == fc->max_background)
		fc->blocked = 1;
	if (fc->num_background == fc->congestion_threshold &&
	    fc->bdi_initialized) {
		FUNC2(&fc->bdi, BLK_RW_SYNC);
		FUNC2(&fc->bdi, BLK_RW_ASYNC);
	}
	FUNC1(&req->list, &fc->bg_queue);
	FUNC0(fc);
}