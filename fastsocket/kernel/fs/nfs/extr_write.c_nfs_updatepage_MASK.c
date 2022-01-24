#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct page {TYPE_1__* mapping; } ;
struct nfs_open_context {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_12__ {TYPE_5__* dentry; } ;
struct file {TYPE_6__ f_path; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
struct TYPE_11__ {TYPE_4__ d_name; TYPE_3__* d_parent; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {TYPE_2__ d_name; } ;
struct TYPE_7__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSIOS_VFSUPDATEPAGE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,long long,...) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 unsigned int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct file*,struct page*,struct inode*) ; 
 struct nfs_open_context* FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int FUNC8 (struct nfs_open_context*,struct page*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC9 (struct page*) ; 

int FUNC10(struct file *file, struct page *page,
		unsigned int offset, unsigned int count)
{
	struct nfs_open_context *ctx = FUNC4(file);
	struct inode	*inode = page->mapping->host;
	int		status = 0;

	FUNC5(inode, NFSIOS_VFSUPDATEPAGE);

	FUNC0("NFS:       nfs_updatepage(%s/%s %d@%lld)\n",
		file->f_path.dentry->d_parent->d_name.name,
		file->f_path.dentry->d_name.name, count,
		(long long)(FUNC9(page) + offset));

	if (FUNC3(file, page, inode)) {
		count = FUNC2(count + offset, FUNC6(page));
		offset = 0;
	}

	status = FUNC8(ctx, page, offset, count);
	if (status < 0)
		FUNC7(page);

	FUNC0("NFS:       nfs_updatepage returns %d (isize %lld)\n",
			status, (long long)FUNC1(inode));
	return status;
}