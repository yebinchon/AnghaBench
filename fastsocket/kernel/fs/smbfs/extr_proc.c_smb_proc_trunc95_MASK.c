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
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  fileid; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct smb_sb_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct smb_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct inode *inode, loff_t length)
{
	struct smb_sb_info *server = FUNC1(inode);
	int result = FUNC3(inode, length);
 
	/*
	 * win9x doesn't appear to update the size immediately.
	 * It will return the old file size after the truncate,
	 * confusing smbfs. So we force an update.
	 *
	 * FIXME: is this still necessary?
	 */
	FUNC2(server, FUNC0(inode)->fileid);
	return result;
}