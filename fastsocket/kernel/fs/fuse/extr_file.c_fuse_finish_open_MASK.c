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
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_mapping; } ;
struct fuse_inode {int /*<<< orphan*/  write_files; } ;
struct fuse_file {int open_flags; int /*<<< orphan*/  write_entry; } ;
struct fuse_conn {int /*<<< orphan*/  lock; } ;
struct file {int f_mode; int /*<<< orphan*/ * f_op; struct fuse_file* private_data; } ;

/* Variables and functions */
 int FMODE_WRITE ; 
 int FOPEN_DIRECT_IO ; 
 int FOPEN_KEEP_CACHE ; 
 int FOPEN_NONSEEKABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fuse_direct_io_file_operations ; 
 struct fuse_conn* FUNC1 (struct inode*) ; 
 struct fuse_inode* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct inode *inode, struct file *file)
{
	struct fuse_file *ff = file->private_data;
	struct fuse_conn *fc = FUNC1(inode);
	struct fuse_inode *fi = FUNC2(inode);

	if (ff->open_flags & FOPEN_DIRECT_IO)
		file->f_op = &fuse_direct_io_file_operations;
	if (!(ff->open_flags & FOPEN_KEEP_CACHE))
		FUNC3(inode->i_mapping);
	if (ff->open_flags & FOPEN_NONSEEKABLE)
		FUNC5(inode, file);

 	/* file might be required for fallocate */
	FUNC6(&fc->lock);
	if (FUNC0(inode->i_mode) && (file->f_mode & FMODE_WRITE))
		FUNC4(&ff->write_entry, &fi->write_files);
	FUNC7(&fc->lock);
}