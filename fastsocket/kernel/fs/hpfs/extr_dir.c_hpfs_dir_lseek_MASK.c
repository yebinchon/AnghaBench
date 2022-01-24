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
struct quad_buffer_head {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mutex; struct super_block* i_sb; } ;
struct hpfs_inode_info {int /*<<< orphan*/  i_dno; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {int f_pos; TYPE_2__ f_path; } ;
typedef  int loff_t ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int ESPIPE ; 
 int /*<<< orphan*/  FUNC0 (struct quad_buffer_head*) ; 
 scalar_t__ FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct hpfs_inode_info* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (struct inode*,int*,struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static loff_t FUNC8(struct file *filp, loff_t off, int whence)
{
	loff_t new_off = off + (whence == 1 ? filp->f_pos : 0);
	loff_t pos;
	struct quad_buffer_head qbh;
	struct inode *i = filp->f_path.dentry->d_inode;
	struct hpfs_inode_info *hpfs_inode = FUNC2(i);
	struct super_block *s = i->i_sb;

	FUNC3();

	/*printk("dir lseek\n");*/
	if (new_off == 0 || new_off == 1 || new_off == 11 || new_off == 12 || new_off == 13) goto ok;
	FUNC5(&i->i_mutex);
	pos = ((loff_t) FUNC1(s, hpfs_inode->i_dno) << 4) + 1;
	while (pos != new_off) {
		if (FUNC4(i, &pos, &qbh)) FUNC0(&qbh);
		else goto fail;
		if (pos == 12) goto fail;
	}
	FUNC6(&i->i_mutex);
ok:
	FUNC7();
	return filp->f_pos = new_off;
fail:
	FUNC6(&i->i_mutex);
	/*printk("illegal lseek: %016llx\n", new_off);*/
	FUNC7();
	return -ESPIPE;
}