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
struct ubifs_znode {struct ubifs_zbranch* zbranch; scalar_t__ cnext; } ;
struct ubifs_zbranch {int lnum; int len; int offs; int /*<<< orphan*/  key; int /*<<< orphan*/ * znode; } ;
struct ubifs_info {int /*<<< orphan*/  tnc_mutex; scalar_t__ replaying; } ;
struct qstr {char* name; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union ubifs_key const*) ; 
 scalar_t__ FUNC1 (struct ubifs_znode*) ; 
 int FUNC2 (struct ubifs_znode*) ; 
 int FUNC3 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 struct ubifs_znode* FUNC5 (struct ubifs_info*,struct ubifs_znode*) ; 
 int FUNC6 (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*,struct qstr const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*,union ubifs_key const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_zbranch*) ; 
 int FUNC9 (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*,struct qstr const*) ; 
 int FUNC13 (struct ubifs_info*,struct ubifs_znode*,struct ubifs_zbranch*,int) ; 
 int FUNC14 (struct ubifs_info*,int,int) ; 
 int FUNC15 (struct ubifs_info*,union ubifs_key const*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC16 (struct ubifs_znode*) ; 

int FUNC17(struct ubifs_info *c, const union ubifs_key *key,
		     int lnum, int offs, int len, const struct qstr *nm)
{
	int found, n, err = 0;
	struct ubifs_znode *znode;

	FUNC10(&c->tnc_mutex);
	FUNC4("LEB %d:%d, name '%.*s', key %s", lnum, offs, nm->len, nm->name,
		FUNC0(key));
	found = FUNC9(c, key, &znode, &n);
	if (found < 0) {
		err = found;
		goto out_unlock;
	}

	if (found == 1) {
		if (c->replaying)
			found = FUNC6(c, key, &znode, &n,
							   nm, 1);
		else
			found = FUNC12(c, key, &znode, &n, nm);
		FUNC4("rc returned %d, znode %p, n %d", found, znode, n);
		if (found < 0) {
			err = found;
			goto out_unlock;
		}

		/* Ensure the znode is dirtied */
		if (znode->cnext || !FUNC16(znode)) {
			znode = FUNC5(c, znode);
			if (FUNC1(znode)) {
				err = FUNC2(znode);
				goto out_unlock;
			}
		}

		if (found == 1) {
			struct ubifs_zbranch *zbr = &znode->zbranch[n];

			FUNC8(zbr);
			err = FUNC14(c, zbr->lnum, zbr->len);
			zbr->lnum = lnum;
			zbr->offs = offs;
			zbr->len = len;
			goto out_unlock;
		}
	}

	if (!found) {
		struct ubifs_zbranch zbr;

		zbr.znode = NULL;
		zbr.lnum = lnum;
		zbr.offs = offs;
		zbr.len = len;
		FUNC7(c, key, &zbr.key);
		err = FUNC13(c, znode, &zbr, n + 1);
		if (err)
			goto out_unlock;
		if (c->replaying) {
			/*
			 * We did not find it in the index so there may be a
			 * dangling branch still in the index. So we remove it
			 * by passing 'ubifs_tnc_remove_nm()' the same key but
			 * an unmatchable name.
			 */
			struct qstr noname = { .len = 0, .name = "" };

			err = FUNC3(c, 0);
			FUNC11(&c->tnc_mutex);
			if (err)
				return err;
			return FUNC15(c, key, &noname);
		}
	}

out_unlock:
	if (!err)
		err = FUNC3(c, 0);
	FUNC11(&c->tnc_mutex);
	return err;
}