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
struct vm_fault {struct page* page; } ;
struct vm_area_struct {TYPE_3__* vm_file; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_8__ {int /*<<< orphan*/  ip_alloc_sem; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct TYPE_7__ {TYPE_2__ f_path; } ;
struct TYPE_5__ {struct inode* d_inode; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct inode*) ; 
 int VM_FAULT_SIGBUS ; 
 int FUNC1 (struct inode*,struct buffer_head*,struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct vm_area_struct *vma, struct vm_fault *vmf)
{
	struct page *page = vmf->page;
	struct inode *inode = vma->vm_file->f_path.dentry->d_inode;
	struct buffer_head *di_bh = NULL;
	sigset_t blocked, oldset;
	int ret, ret2;

	ret = FUNC7(&blocked, &oldset);
	if (ret < 0) {
		FUNC4(ret);
		return ret;
	}

	/*
	 * The cluster locks taken will block a truncate from another
	 * node. Taking the data lock will also ensure that we don't
	 * attempt page truncation as part of a downconvert.
	 */
	ret = FUNC5(inode, &di_bh, 1);
	if (ret < 0) {
		FUNC4(ret);
		goto out;
	}

	/*
	 * The alloc sem should be enough to serialize with
	 * ocfs2_truncate_file() changing i_size as well as any thread
	 * modifying the inode btree.
	 */
	FUNC3(&FUNC0(inode)->ip_alloc_sem);

	ret = FUNC1(inode, di_bh, page);

	FUNC9(&FUNC0(inode)->ip_alloc_sem);

	FUNC2(di_bh);
	FUNC6(inode, 1);

out:
	ret2 = FUNC8(&oldset);
	if (ret2 < 0)
		FUNC4(ret2);
	if (ret)
		ret = VM_FAULT_SIGBUS;
	return ret;
}