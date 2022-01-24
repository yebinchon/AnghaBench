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
struct super_block {int s_blocksize; int s_blocksize_bits; int /*<<< orphan*/ * s_root; int /*<<< orphan*/  s_maxbytes; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {char* host_filename; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  HOSTFS_SUPER_MAGIC ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  MAX_LFS_FILESIZE ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC5 (struct super_block*) ; 
 int FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  hostfs_sbops ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 char* root_ino ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC12 (char*) ; 

__attribute__((used)) static int FUNC13(struct super_block *sb, void *d, int silent)
{
	struct inode *root_inode;
	char *host_root_path, *req_root = d;
	int err;

	sb->s_blocksize = 1024;
	sb->s_blocksize_bits = 10;
	sb->s_magic = HOSTFS_SUPER_MAGIC;
	sb->s_op = &hostfs_sbops;
	sb->s_maxbytes = MAX_LFS_FILESIZE;

	/* NULL is printed as <NULL> by sprintf: avoid that. */
	if (req_root == NULL)
		req_root = "";

	err = -ENOMEM;
	host_root_path = FUNC10(FUNC12(root_ino) + 1
				 + FUNC12(req_root) + 1, GFP_KERNEL);
	if (host_root_path == NULL)
		goto out;

	FUNC11(host_root_path, "%s/%s", root_ino, req_root);

	root_inode = FUNC5(sb);
	if (FUNC1(root_inode)) {
		err = FUNC2(root_inode);
		goto out_free;
	}

	err = FUNC7(root_inode, NULL);
	if (err)
		goto out_put;

	FUNC0(root_inode)->host_filename = host_root_path;
	/*
	 * Avoid that in the error path, iput(root_inode) frees again
	 * host_root_path through hostfs_destroy_inode!
	 */
	host_root_path = NULL;

	err = -ENOMEM;
	sb->s_root = FUNC3(root_inode);
	if (sb->s_root == NULL)
		goto out_put;

	err = FUNC6(root_inode);
	if (err) {
		/* No iput in this case because the dput does that for us */
		FUNC4(sb->s_root);
		sb->s_root = NULL;
		goto out;
	}

	return 0;

out_put:
	FUNC8(root_inode);
out_free:
	FUNC9(host_root_path);
out:
	return err;
}