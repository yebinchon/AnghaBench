#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct vm_fault {struct page* page; } ;
struct vm_area_struct {struct file* vm_file; } ;
struct page {struct address_space* mapping; } ;
struct TYPE_8__ {struct dentry* dentry; } ;
struct file {TYPE_6__* f_mapping; TYPE_1__ f_path; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_7__* d_inode; TYPE_4__ d_name; TYPE_3__* d_parent; } ;
struct address_space {int dummy; } ;
struct TYPE_14__ {struct address_space* i_mapping; } ;
struct TYPE_13__ {TYPE_5__* host; } ;
struct TYPE_12__ {int /*<<< orphan*/  i_ino; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
struct TYPE_10__ {TYPE_2__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  PAGECACHE ; 
 int VM_FAULT_LOCKED ; 
 int VM_FAULT_NOPAGE ; 
 int VM_FAULT_SIGBUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long long) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct file*,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct page*) ; 
 unsigned int FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct file*,struct page*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

__attribute__((used)) static int FUNC9(struct vm_area_struct *vma, struct vm_fault *vmf)
{
	struct page *page = vmf->page;
	struct file *filp = vma->vm_file;
	struct dentry *dentry = filp->f_path.dentry;
	unsigned pagelen;
	int ret = VM_FAULT_NOPAGE;
	struct address_space *mapping;

	FUNC1(PAGECACHE, "NFS: vm_page_mkwrite(%s/%s(%ld), offset %lld)\n",
		dentry->d_parent->d_name.name, dentry->d_name.name,
		filp->f_mapping->host->i_ino,
		(long long)FUNC7(page));

	/* make sure the cache has finished storing the page */
	FUNC4(FUNC0(dentry->d_inode), page);

	FUNC2(page);
	mapping = page->mapping;
	if (mapping != dentry->d_inode->i_mapping)
		goto out_unlock;

	pagelen = FUNC5(page);
	if (pagelen == 0)
		goto out_unlock;

	ret = VM_FAULT_LOCKED;
	if (FUNC3(filp, page) == 0 &&
	    FUNC6(filp, page, 0, pagelen) == 0)
		goto out;

	ret = VM_FAULT_SIGBUS;
out_unlock:
	FUNC8(page);
out:
	return ret;
}