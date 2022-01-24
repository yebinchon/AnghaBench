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
struct vfsmount {TYPE_2__* mnt_sb; } ;
struct seq_file {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {char* host_filename; } ;
struct TYPE_5__ {TYPE_1__* s_root; } ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 char const* root_ino ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,char const*) ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, struct vfsmount *vfs)
{
	struct inode *root = vfs->mnt_sb->s_root->d_inode;
	const char *root_path = FUNC0(root)->host_filename;
	size_t offset = FUNC2(root_ino) + 1;

	if (FUNC2(root_path) > offset)
		FUNC1(seq, ",%s", root_path + offset);

	return 0;
}