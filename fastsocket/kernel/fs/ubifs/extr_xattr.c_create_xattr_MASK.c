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
struct ubifs_inode {int data_len; scalar_t__ xattr_cnt; scalar_t__ xattr_names; int xattr; int ui_size; int /*<<< orphan*/  ui_mutex; int /*<<< orphan*/  xattr_size; int /*<<< orphan*/  data; int /*<<< orphan*/  flags; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int new_ino; int new_dent; int dirtied_ino; int /*<<< orphan*/  dirtied_ino_d; int /*<<< orphan*/  new_ino_d; } ;
struct qstr {scalar_t__ len; } ;
struct inode {int i_flags; int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; TYPE_1__* i_mapping; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ MAX_XATTRS_PER_INODE ; 
 int FUNC4 (struct inode*) ; 
 int S_IFREG ; 
 int S_IRWXUGO ; 
 int S_NOATIME ; 
 int S_NOCMTIME ; 
 int S_NOQUOTA ; 
 int S_SYNC ; 
 int /*<<< orphan*/  UBIFS_XATTR_FL ; 
 scalar_t__ XATTR_LIST_MAX ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  none_address_operations ; 
 int /*<<< orphan*/  none_file_operations ; 
 int /*<<< orphan*/  none_inode_operations ; 
 int FUNC12 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 struct ubifs_inode* FUNC14 (struct inode*) ; 
 int FUNC15 (struct ubifs_info*,struct inode*,struct qstr const*,struct inode*,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC16 (struct ubifs_info*,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ubifs_info*,struct ubifs_budget_req*) ; 

__attribute__((used)) static int FUNC18(struct ubifs_info *c, struct inode *host,
			const struct qstr *nm, const void *value, int size)
{
	int err;
	struct inode *inode;
	struct ubifs_inode *ui, *host_ui = FUNC14(host);
	struct ubifs_budget_req req = { .new_ino = 1, .new_dent = 1,
				.new_ino_d = FUNC0(size, 8), .dirtied_ino = 1,
				.dirtied_ino_d = FUNC0(host_ui->data_len, 8) };

	if (host_ui->xattr_cnt >= MAX_XATTRS_PER_INODE)
		return -ENOSPC;
	/*
	 * Linux limits the maximum size of the extended attribute names list
	 * to %XATTR_LIST_MAX. This means we should not allow creating more
	 * extended attributes if the name list becomes larger. This limitation
	 * is artificial for UBIFS, though.
	 */
	if (host_ui->xattr_names + host_ui->xattr_cnt +
					nm->len + 1 > XATTR_LIST_MAX)
		return -ENOSPC;

	err = FUNC12(c, &req);
	if (err)
		return err;

	inode = FUNC16(c, host, S_IFREG | S_IRWXUGO);
	if (FUNC3(inode)) {
		err = FUNC4(inode);
		goto out_budg;
	}

	/* Re-define all operations to be "nothing" */
	inode->i_mapping->a_ops = &none_address_operations;
	inode->i_op = &none_inode_operations;
	inode->i_fop = &none_file_operations;

	inode->i_flags |= S_SYNC | S_NOATIME | S_NOCMTIME | S_NOQUOTA;
	ui = FUNC14(inode);
	ui->xattr = 1;
	ui->flags |= UBIFS_XATTR_FL;
	ui->data = FUNC7(size, GFP_NOFS);
	if (!ui->data) {
		err = -ENOMEM;
		goto out_free;
	}
	FUNC9(ui->data, value, size);
	inode->i_size = ui->ui_size = size;
	ui->data_len = size;

	FUNC10(&host_ui->ui_mutex);
	host->i_ctime = FUNC13(host);
	host_ui->xattr_cnt += 1;
	host_ui->xattr_size += FUNC1(nm->len);
	host_ui->xattr_size += FUNC2(size);
	host_ui->xattr_names += nm->len;

	err = FUNC15(c, host, nm, inode, 0, 1);
	if (err)
		goto out_cancel;
	FUNC11(&host_ui->ui_mutex);

	FUNC17(c, &req);
	FUNC5(inode);
	FUNC6(inode);
	return 0;

out_cancel:
	host_ui->xattr_cnt -= 1;
	host_ui->xattr_size -= FUNC1(nm->len);
	host_ui->xattr_size -= FUNC2(size);
	FUNC11(&host_ui->ui_mutex);
out_free:
	FUNC8(inode);
	FUNC6(inode);
out_budg:
	FUNC17(c, &req);
	return err;
}