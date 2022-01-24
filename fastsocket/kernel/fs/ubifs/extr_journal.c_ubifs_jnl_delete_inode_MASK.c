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
struct ubifs_inode {scalar_t__ del_cmtno; } ;
struct ubifs_info {scalar_t__ cmt_no; int /*<<< orphan*/  commit_sem; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 struct ubifs_inode* FUNC3 (struct inode const*) ; 
 int FUNC4 (struct ubifs_info*,struct inode const*) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,int) ; 
 int FUNC6 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct ubifs_info *c, const struct inode *inode)
{
	int err;
	struct ubifs_inode *ui = FUNC3(inode);

	FUNC1(inode->i_nlink == 0);

	if (ui->del_cmtno != c->cmt_no)
		/* A commit happened for sure */
		return FUNC4(c, inode);

	FUNC0(&c->commit_sem);
	/*
	 * Check commit number again, because the first test has been done
	 * without @c->commit_sem, so a commit might have happened.
	 */
	if (ui->del_cmtno != c->cmt_no) {
		FUNC7(&c->commit_sem);
		return FUNC4(c, inode);
	}

	err = FUNC6(c, inode->i_ino);
	if (err)
		FUNC5(c, err);
	else
		FUNC2(c, inode->i_ino);
	FUNC7(&c->commit_sem);
	return err;
}