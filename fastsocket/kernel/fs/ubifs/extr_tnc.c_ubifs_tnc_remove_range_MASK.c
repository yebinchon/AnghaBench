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
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {int child_cnt; TYPE_1__* zbranch; scalar_t__ cnext; } ;
struct ubifs_info {int /*<<< orphan*/  tnc_mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  lnum; union ubifs_key key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union ubifs_key*) ; 
 int ENOENT ; 
 scalar_t__ FUNC1 (struct ubifs_znode*) ; 
 int FUNC2 (struct ubifs_znode*) ; 
 int FUNC3 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 struct ubifs_znode* FUNC6 (struct ubifs_info*,struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*,union ubifs_key*,union ubifs_key*,union ubifs_key*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct ubifs_info*,struct ubifs_znode*,int) ; 
 int FUNC12 (struct ubifs_info*,struct ubifs_znode**,int*) ; 
 int FUNC13 (struct ubifs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct ubifs_info*,union ubifs_key*,struct ubifs_znode**,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct ubifs_znode*) ; 

int FUNC16(struct ubifs_info *c, union ubifs_key *from_key,
			   union ubifs_key *to_key)
{
	int i, n, k, err = 0;
	struct ubifs_znode *znode;
	union ubifs_key *key;

	FUNC9(&c->tnc_mutex);
	while (1) {
		/* Find first level 0 znode that contains keys to remove */
		err = FUNC14(c, from_key, &znode, &n);
		if (err < 0)
			goto out_unlock;

		if (err)
			key = from_key;
		else {
			err = FUNC12(c, &znode, &n);
			if (err == -ENOENT) {
				err = 0;
				goto out_unlock;
			}
			if (err < 0)
				goto out_unlock;
			key = &znode->zbranch[n].key;
			if (!FUNC7(c, key, from_key, to_key)) {
				err = 0;
				goto out_unlock;
			}
		}

		/* Ensure the znode is dirtied */
		if (znode->cnext || !FUNC15(znode)) {
			znode = FUNC6(c, znode);
			if (FUNC1(znode)) {
				err = FUNC2(znode);
				goto out_unlock;
			}
		}

		/* Remove all keys in range except the first */
		for (i = n + 1, k = 0; i < znode->child_cnt; i++, k++) {
			key = &znode->zbranch[i].key;
			if (!FUNC7(c, key, from_key, to_key))
				break;
			FUNC8(&znode->zbranch[i]);
			err = FUNC13(c, znode->zbranch[i].lnum,
					     znode->zbranch[i].len);
			if (err) {
				FUNC4(c, znode);
				goto out_unlock;
			}
			FUNC5("removing %s", FUNC0(key));
		}
		if (k) {
			for (i = n + 1 + k; i < znode->child_cnt; i++)
				znode->zbranch[i - k] = znode->zbranch[i];
			znode->child_cnt -= k;
		}

		/* Now delete the first */
		err = FUNC11(c, znode, n);
		if (err)
			goto out_unlock;
	}

out_unlock:
	if (!err)
		err = FUNC3(c, 0);
	FUNC10(&c->tnc_mutex);
	return err;
}