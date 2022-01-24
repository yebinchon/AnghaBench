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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {unsigned short f_flags; struct coda_file_info* private_data; } ;
struct coda_file_info {struct file* cfi_container; scalar_t__ cfi_mapcount; int /*<<< orphan*/  cfi_magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CODA_MAGIC ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int O_APPEND ; 
 unsigned short O_EXCL ; 
 int O_SYNC ; 
 unsigned short FUNC1 (unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct coda_file_info*) ; 
 struct coda_file_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short,struct file**) ; 

int FUNC8(struct inode *coda_inode, struct file *coda_file)
{
	struct file *host_file = NULL;
	int error;
	unsigned short flags = coda_file->f_flags & (~O_EXCL);
	unsigned short coda_flags = FUNC1(flags);
	struct coda_file_info *cfi;

	cfi = FUNC4(sizeof(struct coda_file_info), GFP_KERNEL);
	if (!cfi)
		return -ENOMEM;

	FUNC5();

	error = FUNC7(coda_inode->i_sb, FUNC2(coda_inode), coda_flags,
			   &host_file);
	if (!host_file)
		error = -EIO;

	if (error) {
		FUNC3(cfi);
		FUNC6();
		return error;
	}

	host_file->f_flags |= coda_file->f_flags & (O_APPEND | O_SYNC);

	cfi->cfi_magic = CODA_MAGIC;
	cfi->cfi_mapcount = 0;
	cfi->cfi_container = host_file;

	FUNC0(coda_file->private_data != NULL);
	coda_file->private_data = cfi;

	FUNC6();
	return 0;
}