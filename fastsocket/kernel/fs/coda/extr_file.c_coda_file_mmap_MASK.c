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
struct vm_area_struct {int dummy; } ;
struct inode {int /*<<< orphan*/ * i_mapping; int /*<<< orphan*/  i_data; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {TYPE_3__* f_op; int /*<<< orphan*/  f_mapping; TYPE_2__ f_path; } ;
struct coda_inode_info {int /*<<< orphan*/  c_mapcount; } ;
struct coda_file_info {scalar_t__ cfi_magic; int /*<<< orphan*/  cfi_mapcount; struct file* cfi_container; } ;
struct TYPE_6__ {int (* mmap ) (struct file*,struct vm_area_struct*) ;} ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct coda_file_info* FUNC1 (struct file*) ; 
 scalar_t__ CODA_MAGIC ; 
 int EBUSY ; 
 int ENODEV ; 
 struct coda_inode_info* FUNC2 (struct inode*) ; 
 int FUNC3 (struct file*,struct vm_area_struct*) ; 

__attribute__((used)) static int
FUNC4(struct file *coda_file, struct vm_area_struct *vma)
{
	struct coda_file_info *cfi;
	struct coda_inode_info *cii;
	struct file *host_file;
	struct inode *coda_inode, *host_inode;

	cfi = FUNC1(coda_file);
	FUNC0(!cfi || cfi->cfi_magic != CODA_MAGIC);
	host_file = cfi->cfi_container;

	if (!host_file->f_op || !host_file->f_op->mmap)
		return -ENODEV;

	coda_inode = coda_file->f_path.dentry->d_inode;
	host_inode = host_file->f_path.dentry->d_inode;
	coda_file->f_mapping = host_file->f_mapping;
	if (coda_inode->i_mapping == &coda_inode->i_data)
		coda_inode->i_mapping = host_inode->i_mapping;

	/* only allow additional mmaps as long as userspace isn't changing
	 * the container file on us! */
	else if (coda_inode->i_mapping != host_inode->i_mapping)
		return -EBUSY;

	/* keep track of how often the coda_inode/host_file has been mmapped */
	cii = FUNC2(coda_inode);
	cii->c_mapcount++;
	cfi->cfi_mapcount++;

	return host_file->f_op->mmap(host_file, vma);
}