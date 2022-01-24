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
struct super_block {int s_time_gran; struct dentry* s_root; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; int /*<<< orphan*/  s_blocksize_bits; int /*<<< orphan*/  s_blocksize; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  RPCAUTH_GSSMAGIC ; 
 int /*<<< orphan*/  RPCAUTH_RootEOF ; 
 int /*<<< orphan*/  RPCAUTH_lockd ; 
 int S_IFDIR ; 
 struct dentry* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  files ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct super_block*,int) ; 
 scalar_t__ FUNC5 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_ops ; 

__attribute__((used)) static int
FUNC6(struct super_block *sb, void *data, int silent)
{
	struct inode *inode;
	struct dentry *root;

	sb->s_blocksize = PAGE_CACHE_SIZE;
	sb->s_blocksize_bits = PAGE_CACHE_SHIFT;
	sb->s_magic = RPCAUTH_GSSMAGIC;
	sb->s_op = &s_ops;
	sb->s_time_gran = 1;

	inode = FUNC4(sb, S_IFDIR | 0755);
	if (!inode)
		return -ENOMEM;
	root = FUNC0(inode);
	if (!root) {
		FUNC3(inode);
		return -ENOMEM;
	}
	if (FUNC5(root, files, RPCAUTH_lockd, RPCAUTH_RootEOF, NULL))
		goto out;
	sb->s_root = root;
	return 0;
out:
	FUNC1(root);
	FUNC2(root);
	return -ENOMEM;
}