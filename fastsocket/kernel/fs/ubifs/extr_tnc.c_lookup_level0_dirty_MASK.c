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
struct ubifs_znode {unsigned long time; int /*<<< orphan*/  level; scalar_t__ cnext; struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {int /*<<< orphan*/  key; struct ubifs_znode* znode; } ;
struct ubifs_info {struct ubifs_zbranch zroot; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union ubifs_key const*) ; 
 int ENOENT ; 
 scalar_t__ FUNC1 (struct ubifs_znode*) ; 
 int FUNC2 (struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 struct ubifs_znode* FUNC4 (struct ubifs_info*,struct ubifs_znode*) ; 
 struct ubifs_znode* FUNC5 (struct ubifs_info*,struct ubifs_zbranch*) ; 
 unsigned long FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*,union ubifs_key const*) ; 
 scalar_t__ FUNC8 (struct ubifs_info*,union ubifs_key const*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct ubifs_info*,struct ubifs_znode**,int*) ; 
 struct ubifs_znode* FUNC10 (struct ubifs_info*,struct ubifs_zbranch*,struct ubifs_znode*,int) ; 
 int FUNC11 (struct ubifs_info*,struct ubifs_znode*,union ubifs_key const*,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_znode*) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct ubifs_info *c, const union ubifs_key *key,
			       struct ubifs_znode **zn, int *n)
{
	int err, exact;
	struct ubifs_znode *znode;
	unsigned long time = FUNC6();

	FUNC3("search and dirty key %s", FUNC0(key));

	znode = c->zroot.znode;
	if (FUNC13(!znode)) {
		znode = FUNC10(c, &c->zroot, NULL, 0);
		if (FUNC1(znode))
			return FUNC2(znode);
	}

	znode = FUNC5(c, &c->zroot);
	if (FUNC1(znode))
		return FUNC2(znode);

	znode->time = time;

	while (1) {
		struct ubifs_zbranch *zbr;

		exact = FUNC11(c, znode, key, n);

		if (znode->level == 0)
			break;

		if (*n < 0)
			*n = 0;
		zbr = &znode->zbranch[*n];

		if (zbr->znode) {
			znode->time = time;
			znode = FUNC5(c, zbr);
			if (FUNC1(znode))
				return FUNC2(znode);
			continue;
		}

		/* znode is not in TNC cache, load it from the media */
		znode = FUNC10(c, zbr, znode, *n);
		if (FUNC1(znode))
			return FUNC2(znode);
		znode = FUNC5(c, zbr);
		if (FUNC1(znode))
			return FUNC2(znode);
	}

	*zn = znode;
	if (exact || !FUNC7(c, key) || *n != -1) {
		FUNC3("found %d, lvl %d, n %d", exact, znode->level, *n);
		return exact;
	}

	/*
	 * See huge comment at 'lookup_level0_dirty()' what is the rest of the
	 * code.
	 */
	err = FUNC9(c, &znode, n);
	if (err == -ENOENT) {
		*n = -1;
		FUNC3("found 0, lvl %d, n -1", znode->level);
		return 0;
	}
	if (FUNC13(err < 0))
		return err;
	if (FUNC8(c, key, &znode->zbranch[*n].key)) {
		*n = -1;
		FUNC3("found 0, lvl %d, n -1", znode->level);
		return 0;
	}

	if (znode->cnext || !FUNC12(znode)) {
		znode = FUNC4(c, znode);
		if (FUNC1(znode))
			return FUNC2(znode);
	}

	FUNC3("found 1, lvl %d, n %d", znode->level, *n);
	*zn = znode;
	return 1;
}