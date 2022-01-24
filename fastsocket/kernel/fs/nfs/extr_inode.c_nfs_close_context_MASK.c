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
struct nfs_server {int flags; } ;
struct nfs_open_context {int mode; TYPE_1__* dentry; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  open_files; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int FMODE_WRITE ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int NFS_MOUNT_NOCTO ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_server*,struct inode*) ; 

void FUNC4(struct nfs_open_context *ctx, int is_sync)
{
	struct inode *inode;
	struct nfs_server *server;

	if (!(ctx->mode & FMODE_WRITE))
		return;
	if (!is_sync)
		return;
	inode = ctx->dentry->d_inode;
	if (!FUNC2(&FUNC0(inode)->open_files))
		return;
	server = FUNC1(inode);
	if (server->flags & NFS_MOUNT_NOCTO)
		return;
	FUNC3(server, inode);
}