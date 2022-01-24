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
struct lun {int ro; int file_length; int num_sectors; struct file* filp; } ;
struct inode {TYPE_4__* i_mapping; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_bdev; } ;
struct TYPE_8__ {TYPE_1__* dentry; } ;
struct file {int f_mode; TYPE_3__* f_op; TYPE_2__ f_path; } ;
typedef  int loff_t ;
struct TYPE_12__ {int /*<<< orphan*/  files; } ;
struct TYPE_11__ {scalar_t__ cdrom; } ;
struct TYPE_10__ {int /*<<< orphan*/  host; } ;
struct TYPE_9__ {scalar_t__ aio_write; scalar_t__ write; scalar_t__ aio_read; scalar_t__ read; } ;
struct TYPE_7__ {struct inode* d_inode; } ;

/* Variables and functions */
 int EINVAL ; 
 int EROFS ; 
 int ETOOSMALL ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct lun*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct lun*,char*,...) ; 
 int O_LARGEFILE ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int FUNC3 (struct file*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_6__* current ; 
 int /*<<< orphan*/  FUNC7 (struct file*,int /*<<< orphan*/ ) ; 
 struct file* FUNC8 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct file*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_5__ mod_data ; 

__attribute__((used)) static int FUNC11(struct lun *curlun, const char *filename)
{
	int				ro;
	struct file			*filp = NULL;
	int				rc = -EINVAL;
	struct inode			*inode = NULL;
	loff_t				size;
	loff_t				num_sectors;
	loff_t				min_sectors;

	/* R/W if we can, R/O if we must */
	ro = curlun->ro;
	if (!ro) {
		filp = FUNC8(filename, O_RDWR | O_LARGEFILE, 0);
		if (-EROFS == FUNC3(filp))
			ro = 1;
	}
	if (ro)
		filp = FUNC8(filename, O_RDONLY | O_LARGEFILE, 0);
	if (FUNC0(filp)) {
		FUNC2(curlun, "unable to open backing file: %s\n", filename);
		return FUNC3(filp);
	}

	if (!(filp->f_mode & FMODE_WRITE))
		ro = 1;

	if (filp->f_path.dentry)
		inode = filp->f_path.dentry->d_inode;
	if (inode && FUNC4(inode->i_mode)) {
		if (FUNC6(inode->i_bdev))
			ro = 1;
	} else if (!inode || !FUNC5(inode->i_mode)) {
		FUNC2(curlun, "invalid file type: %s\n", filename);
		goto out;
	}

	/* If we can't read the file, it's no good.
	 * If we can't write the file, use it read-only. */
	if (!filp->f_op || !(filp->f_op->read || filp->f_op->aio_read)) {
		FUNC2(curlun, "file not readable: %s\n", filename);
		goto out;
	}
	if (!(filp->f_op->write || filp->f_op->aio_write))
		ro = 1;

	size = FUNC10(inode->i_mapping->host);
	if (size < 0) {
		FUNC2(curlun, "unable to find file size: %s\n", filename);
		rc = (int) size;
		goto out;
	}
	num_sectors = size >> 9;	// File size in 512-byte blocks
	min_sectors = 1;
	if (mod_data.cdrom) {
		num_sectors &= ~3;	// Reduce to a multiple of 2048
		min_sectors = 300*4;	// Smallest track is 300 frames
		if (num_sectors >= 256*60*75*4) {
			num_sectors = (256*60*75 - 1) * 4;
			FUNC2(curlun, "file too big: %s\n", filename);
			FUNC2(curlun, "using only first %d blocks\n",
					(int) num_sectors);
		}
	}
	if (num_sectors < min_sectors) {
		FUNC2(curlun, "file too small: %s\n", filename);
		rc = -ETOOSMALL;
		goto out;
	}

	FUNC9(filp);
	curlun->ro = ro;
	curlun->filp = filp;
	curlun->file_length = size;
	curlun->num_sectors = num_sectors;
	FUNC1(curlun, "open backing file: %s\n", filename);
	rc = 0;

out:
	FUNC7(filp, current->files);
	return rc;
}