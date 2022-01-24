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
struct super_block {int dummy; } ;
struct TYPE_5__ {int capabilities; } ;
struct smb_sb_info {TYPE_2__ opt; } ;
struct smb_fattr {int /*<<< orphan*/  f_rdev; int /*<<< orphan*/  f_ino; } ;
struct TYPE_4__ {int /*<<< orphan*/ * a_ops; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; TYPE_1__ i_data; int /*<<< orphan*/  i_ino; } ;
struct TYPE_6__ {scalar_t__ openers; scalar_t__ closed; scalar_t__ flags; scalar_t__ access; scalar_t__ fileid; scalar_t__ open; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct smb_fattr*) ; 
 int SMB_CAP_UNIX ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 struct smb_sb_info* FUNC2 (struct super_block*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 struct inode* FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  smb_dir_inode_operations ; 
 int /*<<< orphan*/  smb_dir_inode_operations_unix ; 
 int /*<<< orphan*/  smb_dir_operations ; 
 int /*<<< orphan*/  smb_file_aops ; 
 int /*<<< orphan*/  smb_file_inode_operations ; 
 int /*<<< orphan*/  smb_file_operations ; 
 int /*<<< orphan*/  smb_link_inode_operations ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct smb_fattr*) ; 

struct inode *
FUNC10(struct super_block *sb, struct smb_fattr *fattr)
{
	struct smb_sb_info *server = FUNC2(sb);
	struct inode *result;

	FUNC0("smb_iget: %p\n", fattr);

	result = FUNC8(sb);
	if (!result)
		return result;
	result->i_ino = fattr->f_ino;
	FUNC1(result)->open = 0;
	FUNC1(result)->fileid = 0;
	FUNC1(result)->access = 0;
	FUNC1(result)->flags = 0;
	FUNC1(result)->closed = 0;
	FUNC1(result)->openers = 0;
	FUNC9(result, fattr);
	if (FUNC5(result->i_mode)) {
		result->i_op = &smb_file_inode_operations;
		result->i_fop = &smb_file_operations;
		result->i_data.a_ops = &smb_file_aops;
	} else if (FUNC3(result->i_mode)) {
		if (server->opt.capabilities & SMB_CAP_UNIX)
			result->i_op = &smb_dir_inode_operations_unix;
		else
			result->i_op = &smb_dir_inode_operations;
		result->i_fop = &smb_dir_operations;
	} else if (FUNC4(result->i_mode)) {
		result->i_op = &smb_link_inode_operations;
	} else {
		FUNC6(result, result->i_mode, fattr->f_rdev);
	}
	FUNC7(result);
	return result;
}