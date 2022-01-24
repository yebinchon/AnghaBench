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
struct ubifs_znode {struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {union ubifs_key key; int /*<<< orphan*/  len; } ;
struct ubifs_info {int /*<<< orphan*/  tnc_mutex; } ;
struct ubifs_dent_node {int dummy; } ;
struct qstr {scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union ubifs_key*) ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct ubifs_dent_node* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,union ubifs_key*) ; 
 scalar_t__ FUNC4 (struct ubifs_info*,union ubifs_key*) ; 
 int FUNC5 (struct ubifs_info*,union ubifs_key*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_dent_node*) ; 
 struct ubifs_dent_node* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct ubifs_info*,union ubifs_key*,struct ubifs_znode**,int*,struct qstr const*) ; 
 int FUNC11 (struct ubifs_info*,struct ubifs_znode**,int*) ; 
 int FUNC12 (struct ubifs_info*,struct ubifs_zbranch*,struct ubifs_dent_node*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct ubifs_info*,union ubifs_key*,struct ubifs_znode**,int*) ; 
 scalar_t__ FUNC15 (int) ; 

struct ubifs_dent_node *FUNC16(struct ubifs_info *c,
					   union ubifs_key *key,
					   const struct qstr *nm)
{
	int n, err, type = FUNC5(c, key);
	struct ubifs_znode *znode;
	struct ubifs_dent_node *dent;
	struct ubifs_zbranch *zbr;
	union ubifs_key *dkey;

	FUNC2("%s %s", nm->name ? (char *)nm->name : "(lowest)", FUNC0(key));
	FUNC13(FUNC3(c, key));

	FUNC8(&c->tnc_mutex);
	err = FUNC14(c, key, &znode, &n);
	if (FUNC15(err < 0))
		goto out_unlock;

	if (nm->name) {
		if (err) {
			/* Handle collisions */
			err = FUNC10(c, key, &znode, &n, nm);
			FUNC2("rc returned %d, znode %p, n %d",
				err, znode, n);
			if (FUNC15(err < 0))
				goto out_unlock;
		}

		/* Now find next entry */
		err = FUNC11(c, &znode, &n);
		if (FUNC15(err))
			goto out_unlock;
	} else {
		/*
		 * The full name of the entry was not given, in which case the
		 * behavior of this function is a little different and it
		 * returns current entry, not the next one.
		 */
		if (!err) {
			/*
			 * However, the given key does not exist in the TNC
			 * tree and @znode/@n variables contain the closest
			 * "preceding" element. Switch to the next one.
			 */
			err = FUNC11(c, &znode, &n);
			if (err)
				goto out_unlock;
		}
	}

	zbr = &znode->zbranch[n];
	dent = FUNC7(zbr->len, GFP_NOFS);
	if (FUNC15(!dent)) {
		err = -ENOMEM;
		goto out_unlock;
	}

	/*
	 * The above 'tnc_next()' call could lead us to the next inode, check
	 * this.
	 */
	dkey = &zbr->key;
	if (FUNC4(c, dkey) != FUNC4(c, key) ||
	    FUNC5(c, dkey) != type) {
		err = -ENOENT;
		goto out_free;
	}

	err = FUNC12(c, zbr, dent);
	if (FUNC15(err))
		goto out_free;

	FUNC9(&c->tnc_mutex);
	return dent;

out_free:
	FUNC6(dent);
out_unlock:
	FUNC9(&c->tnc_mutex);
	return FUNC1(err);
}