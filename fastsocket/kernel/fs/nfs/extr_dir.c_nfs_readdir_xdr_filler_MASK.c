#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct rpc_cred {int dummy; } ;
struct page {int dummy; } ;
struct nfs_open_dir_context {struct rpc_cred* cred; } ;
struct nfs_entry {int /*<<< orphan*/  cookie; } ;
struct inode {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  dentry; } ;
struct file {TYPE_1__ f_path; struct nfs_open_dir_context* private_data; } ;
struct TYPE_8__ {unsigned long timestamp; unsigned long gencount; scalar_t__ plus; } ;
typedef  TYPE_2__ nfs_readdir_descriptor_t ;
struct TYPE_11__ {int /*<<< orphan*/  flags; } ;
struct TYPE_10__ {int (* readdir ) (int /*<<< orphan*/ ,struct rpc_cred*,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ ,scalar_t__) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  caps; int /*<<< orphan*/  dtsize; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  NFS_CAP_READDIRPLUS ; 
 TYPE_6__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_ADVISE_RDPLUS ; 
 TYPE_5__* FUNC1 (struct inode*) ; 
 TYPE_4__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 unsigned long FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,struct rpc_cred*,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static
int FUNC6(struct page **pages, nfs_readdir_descriptor_t *desc,
			struct nfs_entry *entry, struct file *file, struct inode *inode)
{
	struct nfs_open_dir_context *ctx = file->private_data;
	struct rpc_cred	*cred = ctx->cred;
	unsigned long	timestamp, gencount;
	int		error;

 again:
	timestamp = jiffies;
	gencount = FUNC4();
	error = FUNC1(inode)->readdir(file->f_path.dentry, cred, entry->cookie, pages,
					  FUNC2(inode)->dtsize, desc->plus);
	if (error < 0) {
		/* We requested READDIRPLUS, but the server doesn't grok it */
		if (error == -ENOTSUPP && desc->plus) {
			FUNC2(inode)->caps &= ~NFS_CAP_READDIRPLUS;
			FUNC3(NFS_INO_ADVISE_RDPLUS, &FUNC0(inode)->flags);
			desc->plus = 0;
			goto again;
		}
		goto error;
	}
	desc->timestamp = timestamp;
	desc->gencount = gencount;
error:
	return error;
}