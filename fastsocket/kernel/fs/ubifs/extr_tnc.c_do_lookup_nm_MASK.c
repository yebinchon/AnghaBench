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
struct ubifs_znode {int /*<<< orphan*/ * zbranch; } ;
struct ubifs_info {int /*<<< orphan*/  tnc_mutex; } ;
struct qstr {int len; struct ubifs_znode* name; } ;

/* Variables and functions */
 int FUNC0 (union ubifs_key const*) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct ubifs_znode*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*,struct qstr const*) ; 
 int FUNC5 (struct ubifs_info*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct ubifs_info *c, const union ubifs_key *key,
			void *node, const struct qstr *nm)
{
	int found, n, err;
	struct ubifs_znode *znode;

	FUNC1("name '%.*s' key %s", nm->len, nm->name, FUNC0(key));
	FUNC2(&c->tnc_mutex);
	found = FUNC7(c, key, &znode, &n);
	if (!found) {
		err = -ENOENT;
		goto out_unlock;
	} else if (found < 0) {
		err = found;
		goto out_unlock;
	}

	FUNC6(n >= 0);

	err = FUNC4(c, key, &znode, &n, nm);
	FUNC1("rc returned %d, znode %p, n %d", err, znode, n);
	if (FUNC8(err < 0))
		goto out_unlock;
	if (err == 0) {
		err = -ENOENT;
		goto out_unlock;
	}

	err = FUNC5(c, &znode->zbranch[n], node);

out_unlock:
	FUNC3(&c->tnc_mutex);
	return err;
}