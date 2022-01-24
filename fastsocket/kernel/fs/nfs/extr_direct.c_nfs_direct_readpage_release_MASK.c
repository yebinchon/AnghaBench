#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nfs_page {int /*<<< orphan*/  wb_bytes; TYPE_3__* wb_context; } ;
struct TYPE_8__ {TYPE_1__* i_sb; } ;
struct TYPE_7__ {TYPE_2__* dentry; } ;
struct TYPE_6__ {TYPE_4__* d_inode; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,long long,int /*<<< orphan*/ ,long long) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_page*) ; 
 scalar_t__ FUNC3 (struct nfs_page*) ; 

__attribute__((used)) static void FUNC4(struct nfs_page *req)
{
	FUNC1("NFS: direct read done (%s/%lld %d@%lld)\n",
		req->wb_context->dentry->d_inode->i_sb->s_id,
		(long long)FUNC0(req->wb_context->dentry->d_inode),
		req->wb_bytes,
		(long long)FUNC3(req));
	FUNC2(req);
}