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
struct fuse_req {scalar_t__ pages; scalar_t__ inline_pages; scalar_t__ page_descs; } ;

/* Variables and functions */
 int /*<<< orphan*/  fuse_req_cachep ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fuse_req*) ; 

void FUNC2(struct fuse_req *req)
{
	if (req->pages != req->inline_pages) {
		FUNC0(req->pages);
		FUNC0(req->page_descs);
	}
	FUNC1(fuse_req_cachep, req);
}