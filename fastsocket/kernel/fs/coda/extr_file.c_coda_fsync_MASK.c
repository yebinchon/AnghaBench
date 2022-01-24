#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {struct inode* d_inode; } ;
struct coda_file_info {scalar_t__ cfi_magic; struct file* cfi_container; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct coda_file_info* FUNC1 (struct file*) ; 
 scalar_t__ CODA_MAGIC ; 
 int EINVAL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct file*,int /*<<< orphan*/ ,int) ; 

int FUNC10(struct file *coda_file, struct dentry *coda_dentry, int datasync)
{
	struct file *host_file;
	struct inode *coda_inode = coda_dentry->d_inode;
	struct coda_file_info *cfi;
	int err = 0;

	if (!(FUNC4(coda_inode->i_mode) || FUNC2(coda_inode->i_mode) ||
	      FUNC3(coda_inode->i_mode)))
		return -EINVAL;

	cfi = FUNC1(coda_file);
	FUNC0(!cfi || cfi->cfi_magic != CODA_MAGIC);
	host_file = cfi->cfi_container;

	err = FUNC9(host_file, host_file->f_path.dentry, datasync);
	if ( !err && !datasync ) {
		FUNC6();
		err = FUNC8(coda_inode->i_sb, FUNC5(coda_inode));
		FUNC7();
	}

	return err;
}