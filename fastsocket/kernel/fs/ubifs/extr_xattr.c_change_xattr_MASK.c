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
struct ubifs_inode {int data_len; int ui_size; int /*<<< orphan*/  ui_mutex; int /*<<< orphan*/  xattr_size; int /*<<< orphan*/  data; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int dirtied_ino; scalar_t__ dirtied_ino_d; } ;
struct inode {int i_size; int /*<<< orphan*/  i_ctime; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 struct ubifs_inode* FUNC11 (struct inode*) ; 
 int FUNC12 (struct ubifs_info*,struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct ubifs_info*,struct ubifs_budget_req*) ; 

__attribute__((used)) static int FUNC14(struct ubifs_info *c, struct inode *host,
			struct inode *inode, const void *value, int size)
{
	int err;
	struct ubifs_inode *host_ui = FUNC11(host);
	struct ubifs_inode *ui = FUNC11(inode);
	struct ubifs_budget_req req = { .dirtied_ino = 2,
		.dirtied_ino_d = FUNC0(size, 8) + FUNC0(host_ui->data_len, 8) };

	FUNC8(ui->data_len == inode->i_size);
	err = FUNC9(c, &req);
	if (err)
		return err;

	FUNC2(ui->data);
	ui->data = FUNC3(size, GFP_NOFS);
	if (!ui->data) {
		err = -ENOMEM;
		goto out_free;
	}
	FUNC5(ui->data, value, size);
	inode->i_size = ui->ui_size = size;
	ui->data_len = size;

	FUNC6(&host_ui->ui_mutex);
	host->i_ctime = FUNC10(host);
	host_ui->xattr_size -= FUNC1(ui->data_len);
	host_ui->xattr_size += FUNC1(size);

	/*
	 * It is important to write the host inode after the xattr inode
	 * because if the host inode gets synchronized (via 'fsync()'), then
	 * the extended attribute inode gets synchronized, because it goes
	 * before the host inode in the write-buffer.
	 */
	err = FUNC12(c, inode, host);
	if (err)
		goto out_cancel;
	FUNC7(&host_ui->ui_mutex);

	FUNC13(c, &req);
	return 0;

out_cancel:
	host_ui->xattr_size -= FUNC1(size);
	host_ui->xattr_size += FUNC1(ui->data_len);
	FUNC7(&host_ui->ui_mutex);
	FUNC4(inode);
out_free:
	FUNC13(c, &req);
	return err;
}