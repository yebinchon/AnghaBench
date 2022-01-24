#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  opcode; } ;
struct TYPE_4__ {TYPE_1__ h; } ;
struct fuse_req {int force; TYPE_2__ in; } ;
struct fuse_conn {struct fuse_req* destroy_req; scalar_t__ conn_init; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUSE_DESTROY ; 
 int /*<<< orphan*/  FUNC0 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_conn*,struct fuse_req*) ; 

__attribute__((used)) static void FUNC2(struct fuse_conn *fc)
{
	struct fuse_req *req = fc->destroy_req;
	if (req && fc->conn_init) {
		fc->destroy_req = NULL;
		req->in.h.opcode = FUSE_DESTROY;
		req->force = 1;
		FUNC1(fc, req);
		FUNC0(fc, req);
	}
}