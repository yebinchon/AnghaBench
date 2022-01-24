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
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_inode {int /*<<< orphan*/  ui_lock; int /*<<< orphan*/  ui_size; int /*<<< orphan*/  synced_i_size; scalar_t__ data_len; } ;
struct ubifs_ino_node {int dummy; } ;
struct ubifs_info {TYPE_1__* jheads; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_nlink; } ;
struct TYPE_2__ {int /*<<< orphan*/  wbuf; } ;

/* Variables and functions */
 size_t BASEHD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int FUNC0 (struct inode const*) ; 
 int UBIFS_INO_NODE_SZ ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_ino_node*) ; 
 struct ubifs_ino_node* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ubifs_info*,size_t,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*,struct ubifs_ino_node*,struct inode const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct ubifs_info*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 struct ubifs_inode* FUNC13 (struct inode const*) ; 
 int /*<<< orphan*/  FUNC14 (struct ubifs_info*,int) ; 
 int FUNC15 (struct ubifs_info*,union ubifs_key*,int,int,int) ; 
 int FUNC16 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct ubifs_info*,size_t,struct ubifs_ino_node*,int,int*,int*,int) ; 

int FUNC19(struct ubifs_info *c, const struct inode *inode)
{
	int err, lnum, offs;
	struct ubifs_ino_node *ino;
	struct ubifs_inode *ui = FUNC13(inode);
	int sync = 0, len = UBIFS_INO_NODE_SZ, last_reference = !inode->i_nlink;

	FUNC1("ino %lu, nlink %u", inode->i_ino, inode->i_nlink);

	/*
	 * If the inode is being deleted, do not write the attached data. No
	 * need to synchronize the write-buffer either.
	 */
	if (!last_reference) {
		len += ui->data_len;
		sync = FUNC0(inode);
	}
	ino = FUNC5(len, GFP_NOFS);
	if (!ino)
		return -ENOMEM;

	/* Make reservation before allocating sequence numbers */
	err = FUNC6(c, BASEHD, len);
	if (err)
		goto out_free;

	FUNC7(c, ino, inode, 1);
	err = FUNC18(c, BASEHD, ino, len, &lnum, &offs, sync);
	if (err)
		goto out_release;
	if (!sync)
		FUNC17(&c->jheads[BASEHD].wbuf,
					  inode->i_ino);
	FUNC8(c, BASEHD);

	if (last_reference) {
		err = FUNC16(c, inode->i_ino);
		if (err)
			goto out_ro;
		FUNC12(c, inode->i_ino);
		err = FUNC11(c, lnum, len);
	} else {
		union ubifs_key key;

		FUNC3(c, &key, inode->i_ino);
		err = FUNC15(c, &key, lnum, offs, len);
	}
	if (err)
		goto out_ro;

	FUNC2(c);
	FUNC9(&ui->ui_lock);
	ui->synced_i_size = ui->ui_size;
	FUNC10(&ui->ui_lock);
	FUNC4(ino);
	return 0;

out_release:
	FUNC8(c, BASEHD);
out_ro:
	FUNC14(c, err);
	FUNC2(c);
out_free:
	FUNC4(ino);
	return err;
}