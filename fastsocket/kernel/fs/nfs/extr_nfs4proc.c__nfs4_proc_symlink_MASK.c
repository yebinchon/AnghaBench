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
struct page {int dummy; } ;
struct TYPE_6__ {unsigned int len; struct page** pages; } ;
struct TYPE_7__ {TYPE_2__ symlink; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
struct TYPE_5__ {int /*<<< orphan*/ * rpc_proc; } ;
struct nfs4_createdata {TYPE_4__ arg; TYPE_1__ msg; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NF4LNK ; 
 unsigned int NFS4_MAXPATHLEN ; 
 size_t NFSPROC4_CLNT_SYMLINK ; 
 struct nfs4_createdata* FUNC0 (struct inode*,int /*<<< orphan*/ *,struct iattr*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,struct dentry*,struct nfs4_createdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_createdata*) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 

__attribute__((used)) static int FUNC3(struct inode *dir, struct dentry *dentry,
		struct page *page, unsigned int len, struct iattr *sattr)
{
	struct nfs4_createdata *data;
	int status = -ENAMETOOLONG;

	if (len > NFS4_MAXPATHLEN)
		goto out;

	status = -ENOMEM;
	data = FUNC0(dir, &dentry->d_name, sattr, NF4LNK);
	if (data == NULL)
		goto out;

	data->msg.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_SYMLINK];
	data->arg.u.symlink.pages = &page;
	data->arg.u.symlink.len = len;
	
	status = FUNC1(dir, dentry, data);

	FUNC2(data);
out:
	return status;
}