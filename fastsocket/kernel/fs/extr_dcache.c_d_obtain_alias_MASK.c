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
struct qstr {char* name; } ;
struct inode {int /*<<< orphan*/  d_lock; TYPE_1__* i_sb; int /*<<< orphan*/  d_hash; int /*<<< orphan*/  i_dentry; int /*<<< orphan*/  d_alias; int /*<<< orphan*/  d_flags; struct inode* d_inode; TYPE_1__* d_sb; struct inode* d_parent; } ;
struct dentry {int /*<<< orphan*/  d_lock; TYPE_1__* i_sb; int /*<<< orphan*/  d_hash; int /*<<< orphan*/  i_dentry; int /*<<< orphan*/  d_alias; int /*<<< orphan*/  d_flags; struct dentry* d_inode; TYPE_1__* d_sb; struct dentry* d_parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_anon; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCACHE_DISCONNECTED ; 
 int /*<<< orphan*/  DCACHE_UNHASHED ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct inode* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ *,struct qstr const*) ; 
 struct inode* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  dcache_lock ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

struct dentry *FUNC13(struct inode *inode)
{
	static const struct qstr anonstring = { .name = "" };
	struct dentry *tmp;
	struct dentry *res;

	if (!inode)
		return FUNC1(-ESTALE);
	if (FUNC2(inode))
		return FUNC0(inode);

	res = FUNC5(inode);
	if (res)
		goto out_iput;

	tmp = FUNC4(NULL, &anonstring);
	if (!tmp) {
		res = FUNC1(-ENOMEM);
		goto out_iput;
	}
	tmp->d_parent = tmp; /* make sure dput doesn't croak */

	FUNC11(&dcache_lock);
	res = FUNC3(inode);
	if (res) {
		FUNC12(&dcache_lock);
		FUNC6(tmp);
		goto out_iput;
	}

	/* attach a disconnected dentry */
	FUNC11(&tmp->d_lock);
	tmp->d_sb = inode->i_sb;
	tmp->d_inode = inode;
	tmp->d_flags |= DCACHE_DISCONNECTED;
	tmp->d_flags &= ~DCACHE_UNHASHED;
	FUNC9(&tmp->d_alias, &inode->i_dentry);
	FUNC7(&tmp->d_hash, &inode->i_sb->s_anon);
	FUNC12(&tmp->d_lock);
	FUNC12(&dcache_lock);

	FUNC10(tmp, inode);
	return tmp;

 out_iput:
	if (res && !FUNC2(res))
		FUNC10(res, inode);
	FUNC8(inode);
	return res;
}