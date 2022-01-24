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
struct qstr {int len; char* name; } ;
struct object_info {int /*<<< orphan*/  parent_id; int /*<<< orphan*/  file_id; scalar_t__ name_len; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_size; struct super_block* i_sb; } ;
struct adfs_dir_ops {int (* read ) (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct adfs_dir*) ;int (* setpos ) (struct adfs_dir*,int /*<<< orphan*/ ) ;scalar_t__ (* getnext ) (struct adfs_dir*,struct object_info*) ;int /*<<< orphan*/  (* free ) (struct adfs_dir*) ;} ;
struct adfs_dir {scalar_t__ parent_id; } ;
struct TYPE_4__ {scalar_t__ parent_id; } ;
struct TYPE_3__ {struct adfs_dir_ops* s_dir; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  adfs_dir_lock ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (struct qstr*,struct object_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct adfs_dir*) ; 
 int FUNC7 (struct adfs_dir*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct adfs_dir*,struct object_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct adfs_dir*) ; 

__attribute__((used)) static int
FUNC10(struct inode *inode, struct qstr *name, struct object_info *obj)
{
	struct super_block *sb = inode->i_sb;
	struct adfs_dir_ops *ops = FUNC1(sb)->s_dir;
	struct adfs_dir dir;
	int ret;

	ret = ops->read(sb, inode->i_ino, inode->i_size, &dir);
	if (ret)
		goto out;

	if (FUNC0(inode)->parent_id != dir.parent_id) {
		FUNC2(sb, "parent directory changed under me! (%lx but got %lx)\n",
			   FUNC0(inode)->parent_id, dir.parent_id);
		ret = -EIO;
		goto free_out;
	}

	obj->parent_id = inode->i_ino;

	/*
	 * '.' is handled by reserved_lookup() in fs/namei.c
	 */
	if (name->len == 2 && name->name[0] == '.' && name->name[1] == '.') {
		/*
		 * Currently unable to fill in the rest of 'obj',
		 * but this is better than nothing.  We need to
		 * ascend one level to find it's parent.
		 */
		obj->name_len = 0;
		obj->file_id  = obj->parent_id;
		goto free_out;
	}

	FUNC4(&adfs_dir_lock);

	ret = ops->setpos(&dir, 0);
	if (ret)
		goto unlock_out;

	ret = -ENOENT;
	while (ops->getnext(&dir, obj) == 0) {
		if (FUNC3(name, obj)) {
			ret = 0;
			break;
		}
	}

unlock_out:
	FUNC5(&adfs_dir_lock);

free_out:
	ops->free(&dir);
out:
	return ret;
}