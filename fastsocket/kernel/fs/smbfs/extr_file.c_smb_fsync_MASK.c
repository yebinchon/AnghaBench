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
struct smb_sb_info {int dummy; } ;
struct file {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  fileid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct smb_sb_info* FUNC3 (struct dentry*) ; 
 int FUNC4 (struct smb_sb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct file *file, struct dentry * dentry, int datasync)
{
	struct smb_sb_info *server = FUNC3(dentry);
	int result;

	FUNC2("sync file %s/%s\n", FUNC0(dentry));

	/*
	 * The VFS will writepage() all dirty pages for us, but we
	 * should send a SMBflush to the server, letting it know that
	 * we want things synchronized with actual storage.
	 *
	 * Note: this function requires all pages to have been written already
	 *       (should be ok with writepage_sync)
	 */
	result = FUNC4(server, FUNC1(dentry->d_inode)->fileid);
	return result;
}