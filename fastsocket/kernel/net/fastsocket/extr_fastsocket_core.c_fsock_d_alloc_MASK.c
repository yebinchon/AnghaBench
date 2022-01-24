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
struct socket {int dummy; } ;
struct qstr {int len; int /*<<< orphan*/  name; int /*<<< orphan*/  hash; } ;
struct inode {int /*<<< orphan*/ * i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  d_child; } ;
struct TYPE_3__ {char* name; int len; int /*<<< orphan*/  hash; } ;
struct dentry {char* d_iname; int d_flags; int /*<<< orphan*/ * d_op; struct inode* d_inode; int /*<<< orphan*/ * d_parent; int /*<<< orphan*/ * d_sb; TYPE_2__ d_u; int /*<<< orphan*/  d_alias; int /*<<< orphan*/  d_subdirs; int /*<<< orphan*/  d_lru; int /*<<< orphan*/  d_hash; int /*<<< orphan*/ * d_fsdata; int /*<<< orphan*/  d_lock; int /*<<< orphan*/  d_count; TYPE_1__ d_name; } ;

/* Variables and functions */
 int DCACHE_DISCONNECTED ; 
 int DCACHE_FASTSOCKET ; 
 int DCACHE_UNHASHED ; 
 int /*<<< orphan*/  DEBUG ; 
 int DNAME_INLINE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct dentry*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  dentry_cache ; 
 int /*<<< orphan*/  fastsockfs_dentry_operations ; 
 char* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dentry *FUNC10(struct socket *sock, struct dentry *parent, const struct qstr *name)
{
	struct dentry *dentry;
	char *dname;
	struct inode *inode;

	dentry = FUNC6(dentry_cache, GFP_KERNEL);
	if (!dentry)
		return NULL;

	FUNC0(DEBUG, "\tAllocat dentry 0x%p\n", dentry);

	if (name->len > DNAME_INLINE_LEN-1) {
		dname = FUNC5(name->len + 1, GFP_KERNEL);
		if (!dname) {
			FUNC7(dentry_cache, dentry);
			return NULL;
		}
	} else {
		dname = dentry->d_iname;
	}

	dentry->d_name.name = dname;

	dentry->d_name.len = name->len;
	dentry->d_name.hash = name->hash;
	FUNC8(dname, name->name, name->len);
	dname[name->len] = 0;

	FUNC4(&dentry->d_count, 1);
	dentry->d_flags = DCACHE_UNHASHED;
	FUNC9(&dentry->d_lock);
	dentry->d_inode = NULL;
	dentry->d_parent = NULL;
	dentry->d_sb = NULL;
	dentry->d_op = NULL;
	dentry->d_fsdata = NULL;
	FUNC1(&dentry->d_hash);
	FUNC2(&dentry->d_lru);
	FUNC2(&dentry->d_subdirs);
	FUNC2(&dentry->d_alias);

	FUNC2(&dentry->d_u.d_child);

	inode = FUNC3(sock);

	dentry->d_sb = inode->i_sb;
	dentry->d_parent = NULL;
	dentry->d_flags |= DCACHE_FASTSOCKET | DCACHE_DISCONNECTED;
	dentry->d_inode = inode;

	dentry->d_op = &fastsockfs_dentry_operations;

	return dentry;
}