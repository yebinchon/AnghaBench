#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct nfs_renamedata {int /*<<< orphan*/  cred; TYPE_1__* new_dir; TYPE_1__* old_dir; TYPE_2__* new_dentry; TYPE_2__* old_dentry; } ;
struct TYPE_4__ {scalar_t__ d_inode; } ;
struct TYPE_3__ {struct super_block* i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_renamedata*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *calldata)
{
	struct nfs_renamedata	*data = calldata;
	struct super_block *sb = data->old_dir->i_sb;

	if (data->old_dentry->d_inode)
		FUNC3(data->old_dentry->d_inode);

	FUNC0(data->old_dentry);
	FUNC0(data->new_dentry);
	FUNC1(data->old_dir);
	FUNC1(data->new_dir);
	FUNC4(sb);
	FUNC5(data->cred);
	FUNC2(data);
}