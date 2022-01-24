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
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {scalar_t__ cnext; } ;
struct ubifs_info {int /*<<< orphan*/  tnc_mutex; scalar_t__ replaying; } ;
struct qstr {int len; struct ubifs_znode* name; } ;

/* Variables and functions */
 int FUNC0 (union ubifs_key const*) ; 
 scalar_t__ FUNC1 (struct ubifs_znode*) ; 
 int FUNC2 (struct ubifs_znode*) ; 
 int FUNC3 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,struct ubifs_znode*,int) ; 
 struct ubifs_znode* FUNC5 (struct ubifs_info*,struct ubifs_znode*) ; 
 int FUNC6 (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*,struct qstr const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*,struct qstr const*) ; 
 int FUNC11 (struct ubifs_info*,struct ubifs_znode*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_znode*) ; 

int FUNC13(struct ubifs_info *c, const union ubifs_key *key,
			const struct qstr *nm)
{
	int n, err;
	struct ubifs_znode *znode;

	FUNC8(&c->tnc_mutex);
	FUNC4("%.*s, key %s", nm->len, nm->name, FUNC0(key));
	err = FUNC7(c, key, &znode, &n);
	if (err < 0)
		goto out_unlock;

	if (err) {
		if (c->replaying)
			err = FUNC6(c, key, &znode, &n,
							 nm, 0);
		else
			err = FUNC10(c, key, &znode, &n, nm);
		FUNC4("rc returned %d, znode %p, n %d", err, znode, n);
		if (err < 0)
			goto out_unlock;
		if (err) {
			/* Ensure the znode is dirtied */
			if (znode->cnext || !FUNC12(znode)) {
				    znode = FUNC5(c, znode);
				    if (FUNC1(znode)) {
					    err = FUNC2(znode);
					    goto out_unlock;
				    }
			}
			err = FUNC11(c, znode, n);
		}
	}

out_unlock:
	if (!err)
		err = FUNC3(c, 0);
	FUNC9(&c->tnc_mutex);
	return err;
}