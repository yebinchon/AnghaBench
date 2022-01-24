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
struct qstr {int len; char* name; } ;
struct pohmelfs_sb {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_sb; } ;
struct pohmelfs_inode {int /*<<< orphan*/  ino; TYPE_1__ vfs_inode; } ;
struct netfs_trans {int dummy; } ;
struct netfs_cmd {int ext; int size; int /*<<< orphan*/  start; int /*<<< orphan*/  id; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NETFS_RENAME ; 
 struct pohmelfs_sb* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netfs_cmd*) ; 
 struct netfs_trans* FUNC2 (struct pohmelfs_sb*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct netfs_cmd* FUNC3 (struct netfs_trans*) ; 
 int FUNC4 (struct netfs_trans*,struct pohmelfs_sb*) ; 
 int /*<<< orphan*/  FUNC5 (struct netfs_trans*) ; 
 int /*<<< orphan*/  FUNC6 (struct netfs_cmd*,struct netfs_trans*,int) ; 
 int FUNC7 (struct pohmelfs_inode*,char*,int) ; 
 int FUNC8 (struct pohmelfs_inode*) ; 
 int FUNC9 (char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC10(struct pohmelfs_inode *pi, struct pohmelfs_inode *parent,
		struct qstr *str)
{
	int path_len, err, total_len = 0, inode_len, parent_len;
	char *path;
	struct netfs_trans *t;
	struct netfs_cmd *cmd;
	struct pohmelfs_sb *psb = FUNC0(pi->vfs_inode.i_sb);

	parent_len = FUNC8(parent);
	inode_len = FUNC8(pi);

	if (parent_len < 0 || inode_len < 0)
		return -EINVAL;

	path_len = parent_len + inode_len + str->len + 3;

	t = FUNC2(psb, path_len, 0, 0);
	if (!t)
		return -ENOMEM;

	cmd = FUNC3(t);
	path = (char *)(cmd + 1);

	err = FUNC7(pi, path, inode_len);
	if (err < 0)
		goto err_out_unlock;

	cmd->ext = err;

	path += err;
	total_len += err;
	path_len -= err;

	*path = '|';
	path++;
	total_len++;
	path_len--;

	err = FUNC7(parent, path, parent_len);
	if (err < 0)
		goto err_out_unlock;

	/*
	 * Do not place a null-byte before the final slash and the name.
	 */
	err--;
	path += err;
	total_len += err;
	path_len -= err;

	err = FUNC9(path, path_len - 1, "/%s", str->name);

	total_len += err + 1; /* 0 symbol */
	path_len -= err + 1;

	cmd->cmd = NETFS_RENAME;
	cmd->id = pi->ino;
	cmd->start = parent->ino;
	cmd->size = total_len;

	FUNC1(cmd);

	FUNC6(cmd, t, total_len);

	return FUNC4(t, psb);

err_out_unlock:
	FUNC5(t);
	return err;
}