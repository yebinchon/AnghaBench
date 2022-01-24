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
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_wbuf {int dummy; } ;
struct ubifs_inode {scalar_t__ data_len; int /*<<< orphan*/  ui_lock; int /*<<< orphan*/  ui_size; int /*<<< orphan*/  synced_i_size; int /*<<< orphan*/  del_cmtno; int /*<<< orphan*/  ui_mutex; } ;
struct ubifs_ino_node {int dummy; } ;
struct ubifs_info {TYPE_2__* jheads; int /*<<< orphan*/  cmt_no; } ;
struct TYPE_3__ {int /*<<< orphan*/  node_type; } ;
struct ubifs_dent_node {char* name; int /*<<< orphan*/  nlen; int /*<<< orphan*/  type; int /*<<< orphan*/  inum; int /*<<< orphan*/  key; TYPE_1__ ch; } ;
struct qstr {int len; int /*<<< orphan*/  name; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mode; } ;
struct TYPE_4__ {struct ubifs_wbuf wbuf; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 size_t BASEHD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int FUNC1 (struct inode const*) ; 
 int FUNC2 (struct inode const*) ; 
 int /*<<< orphan*/  UBIFS_DENT_NODE ; 
 int UBIFS_DENT_NODE_SZ ; 
 int UBIFS_INO_NODE_SZ ; 
 int /*<<< orphan*/  UBIFS_XENT_NODE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ,struct qstr const*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ubifs_dent_node*) ; 
 struct ubifs_dent_node* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ubifs_info*,size_t,int) ; 
 int /*<<< orphan*/  FUNC14 (struct ubifs_info*,struct ubifs_inode*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct ubifs_info*,struct ubifs_ino_node*,struct inode const*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct ubifs_info*,size_t) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (struct ubifs_info*,int,int) ; 
 int FUNC22 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 struct ubifs_inode* FUNC25 (struct inode const*) ; 
 int /*<<< orphan*/  FUNC26 (struct ubifs_info*,struct ubifs_dent_node*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct ubifs_info*,int) ; 
 int FUNC28 (struct ubifs_info*,union ubifs_key*,int,int,int) ; 
 int FUNC29 (struct ubifs_info*,union ubifs_key*,int,int,int,struct qstr const*) ; 
 int FUNC30 (struct ubifs_info*,union ubifs_key*,struct qstr const*) ; 
 int /*<<< orphan*/  FUNC31 (struct ubifs_wbuf*,int /*<<< orphan*/ ) ; 
 int FUNC32 (struct ubifs_info*,size_t,struct ubifs_dent_node*,int,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC33 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ,struct qstr const*) ; 
 int /*<<< orphan*/  FUNC34 (struct ubifs_dent_node*) ; 

int FUNC35(struct ubifs_info *c, const struct inode *dir,
		     const struct qstr *nm, const struct inode *inode,
		     int deletion, int xent)
{
	int err, dlen, ilen, len, lnum, ino_offs, dent_offs;
	int aligned_dlen, aligned_ilen, sync = FUNC1(dir);
	int last_reference = !!(deletion && inode->i_nlink == 0);
	struct ubifs_inode *ui = FUNC25(inode);
	struct ubifs_inode *dir_ui = FUNC25(dir);
	struct ubifs_dent_node *dent;
	struct ubifs_ino_node *ino;
	union ubifs_key dent_key, ino_key;

	FUNC5("ino %lu, dent '%.*s', data len %d in dir ino %lu",
		inode->i_ino, nm->len, nm->name, ui->data_len, dir->i_ino);
	FUNC23(dir_ui->data_len == 0);
	FUNC23(FUNC16(&dir_ui->ui_mutex));

	dlen = UBIFS_DENT_NODE_SZ + nm->len + 1;
	ilen = UBIFS_INO_NODE_SZ;

	/*
	 * If the last reference to the inode is being deleted, then there is
	 * no need to attach and write inode data, it is being deleted anyway.
	 * And if the inode is being deleted, no need to synchronize
	 * write-buffer even if the inode is synchronous.
	 */
	if (!last_reference) {
		ilen += ui->data_len;
		sync |= FUNC2(inode);
	}

	aligned_dlen = FUNC0(dlen, 8);
	aligned_ilen = FUNC0(ilen, 8);
	len = aligned_dlen + aligned_ilen + UBIFS_INO_NODE_SZ;
	dent = FUNC12(len, GFP_NOFS);
	if (!dent)
		return -ENOMEM;

	/* Make reservation before allocating sequence numbers */
	err = FUNC13(c, BASEHD, len);
	if (err)
		goto out_free;

	if (!xent) {
		dent->ch.node_type = UBIFS_DENT_NODE;
		FUNC6(c, &dent_key, dir->i_ino, nm);
	} else {
		dent->ch.node_type = UBIFS_XENT_NODE;
		FUNC33(c, &dent_key, dir->i_ino, nm);
	}

	FUNC10(c, &dent_key, dent->key);
	dent->inum = deletion ? 0 : FUNC4(inode->i_ino);
	dent->type = FUNC8(inode->i_mode);
	dent->nlen = FUNC3(nm->len);
	FUNC15(dent->name, nm->name, nm->len);
	dent->name[nm->len] = '\0';
	FUNC34(dent);
	FUNC26(c, dent, dlen, 0);

	ino = (void *)dent + aligned_dlen;
	FUNC17(c, ino, inode, 0);
	ino = (void *)ino + aligned_ilen;
	FUNC17(c, ino, dir, 1);

	if (last_reference) {
		err = FUNC22(c, inode->i_ino);
		if (err) {
			FUNC18(c, BASEHD);
			goto out_finish;
		}
		ui->del_cmtno = c->cmt_no;
	}

	err = FUNC32(c, BASEHD, dent, len, &lnum, &dent_offs, sync);
	if (err)
		goto out_release;
	if (!sync) {
		struct ubifs_wbuf *wbuf = &c->jheads[BASEHD].wbuf;

		FUNC31(wbuf, inode->i_ino);
		FUNC31(wbuf, dir->i_ino);
	}
	FUNC18(c, BASEHD);
	FUNC11(dent);

	if (deletion) {
		err = FUNC30(c, &dent_key, nm);
		if (err)
			goto out_ro;
		err = FUNC21(c, lnum, dlen);
	} else
		err = FUNC29(c, &dent_key, lnum, dent_offs, dlen, nm);
	if (err)
		goto out_ro;

	/*
	 * Note, we do not remove the inode from TNC even if the last reference
	 * to it has just been deleted, because the inode may still be opened.
	 * Instead, the inode has been added to orphan lists and the orphan
	 * subsystem will take further care about it.
	 */
	FUNC9(c, &ino_key, inode->i_ino);
	ino_offs = dent_offs + aligned_dlen;
	err = FUNC28(c, &ino_key, lnum, ino_offs, ilen);
	if (err)
		goto out_ro;

	FUNC9(c, &ino_key, dir->i_ino);
	ino_offs += aligned_ilen;
	err = FUNC28(c, &ino_key, lnum, ino_offs, UBIFS_INO_NODE_SZ);
	if (err)
		goto out_ro;

	FUNC7(c);
	FUNC19(&ui->ui_lock);
	ui->synced_i_size = ui->ui_size;
	FUNC20(&ui->ui_lock);
	FUNC14(c, ui);
	FUNC14(c, dir_ui);
	return 0;

out_finish:
	FUNC7(c);
out_free:
	FUNC11(dent);
	return err;

out_release:
	FUNC18(c, BASEHD);
out_ro:
	FUNC27(c, err);
	if (last_reference)
		FUNC24(c, inode->i_ino);
	FUNC7(c);
	return err;
}