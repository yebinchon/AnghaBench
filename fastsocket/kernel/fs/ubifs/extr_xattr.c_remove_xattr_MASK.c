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
struct ubifs_inode {scalar_t__ data_len; int xattr_cnt; int /*<<< orphan*/  ui_mutex; int /*<<< orphan*/  xattr_size; int /*<<< orphan*/  xattr_names; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int dirtied_ino; int mod_dent; int /*<<< orphan*/  dirtied_ino_d; } ;
struct qstr {scalar_t__ len; } ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_ctime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 struct ubifs_inode* FUNC9 (struct inode*) ; 
 int FUNC10 (struct ubifs_info*,struct inode*,struct inode*,struct qstr const*) ; 
 int /*<<< orphan*/  FUNC11 (struct ubifs_info*,struct ubifs_budget_req*) ; 

__attribute__((used)) static int FUNC12(struct ubifs_info *c, struct inode *host,
			struct inode *inode, const struct qstr *nm)
{
	int err;
	struct ubifs_inode *host_ui = FUNC9(host);
	struct ubifs_inode *ui = FUNC9(inode);
	struct ubifs_budget_req req = { .dirtied_ino = 2, .mod_dent = 1,
				.dirtied_ino_d = FUNC0(host_ui->data_len, 8) };

	FUNC6(ui->data_len == inode->i_size);

	err = FUNC7(c, &req);
	if (err)
		return err;

	FUNC4(&host_ui->ui_mutex);
	host->i_ctime = FUNC8(host);
	host_ui->xattr_cnt -= 1;
	host_ui->xattr_size -= FUNC1(nm->len);
	host_ui->xattr_size -= FUNC2(ui->data_len);
	host_ui->xattr_names -= nm->len;

	err = FUNC10(c, host, inode, nm);
	if (err)
		goto out_cancel;
	FUNC5(&host_ui->ui_mutex);

	FUNC11(c, &req);
	return 0;

out_cancel:
	host_ui->xattr_cnt += 1;
	host_ui->xattr_size += FUNC1(nm->len);
	host_ui->xattr_size += FUNC2(ui->data_len);
	FUNC5(&host_ui->ui_mutex);
	FUNC11(c, &req);
	FUNC3(inode);
	return err;
}