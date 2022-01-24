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
struct super_block {int /*<<< orphan*/  s_root; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; int /*<<< orphan*/  s_blocksize_bits; int /*<<< orphan*/  s_blocksize; } ;
struct ipc_namespace {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MQUEUE_MAGIC ; 
 int /*<<< orphan*/  PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 int S_IFDIR ; 
 int S_IRWXUGO ; 
 int S_ISVTX ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct super_block*,struct ipc_namespace*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mqueue_super_ops ; 

__attribute__((used)) static int FUNC3(struct super_block *sb, void *data, int silent)
{
	struct inode *inode;
	struct ipc_namespace *ns = data;
	int error;

	sb->s_blocksize = PAGE_CACHE_SIZE;
	sb->s_blocksize_bits = PAGE_CACHE_SHIFT;
	sb->s_magic = MQUEUE_MAGIC;
	sb->s_op = &mqueue_super_ops;

	inode = FUNC2(sb, ns, S_IFDIR | S_ISVTX | S_IRWXUGO,
				NULL);
	if (!inode) {
		error = -ENOMEM;
		goto out;
	}

	sb->s_root = FUNC0(inode);
	if (!sb->s_root) {
		FUNC1(inode);
		error = -ENOMEM;
		goto out;
	}
	error = 0;

out:
	return error;
}