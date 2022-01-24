#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct TYPE_5__ {TYPE_1__ h; } ;
struct fuse_req {TYPE_2__ in; } ;
struct TYPE_6__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct fuse_req *req)
{
	req->in.h.uid = FUNC1();
	req->in.h.gid = FUNC0();
	req->in.h.pid = current->pid;
}