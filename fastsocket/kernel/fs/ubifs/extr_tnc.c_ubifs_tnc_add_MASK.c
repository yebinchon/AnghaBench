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
struct ubifs_zbranch {int lnum; int offs; int len; int /*<<< orphan*/  key; int /*<<< orphan*/ * znode; } ;
struct ubifs_info {int /*<<< orphan*/  tnc_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union ubifs_key const*) ; 
 int FUNC1 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,union ubifs_key const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_zbranch*) ; 
 int FUNC5 (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct ubifs_info*,struct ubifs_znode*,struct ubifs_zbranch*,int) ; 
 int FUNC9 (struct ubifs_info*,int,int) ; 

int FUNC10(struct ubifs_info *c, const union ubifs_key *key, int lnum,
		  int offs, int len)
{
	int found, n, err = 0;
	struct ubifs_znode *znode;

	FUNC6(&c->tnc_mutex);
	FUNC2("%d:%d, len %d, key %s", lnum, offs, len, FUNC0(key));
	found = FUNC5(c, key, &znode, &n);
	if (!found) {
		struct ubifs_zbranch zbr;

		zbr.znode = NULL;
		zbr.lnum = lnum;
		zbr.offs = offs;
		zbr.len = len;
		FUNC3(c, key, &zbr.key);
		err = FUNC8(c, znode, &zbr, n + 1);
	} else if (found == 1) {
		struct ubifs_zbranch *zbr = &znode->zbranch[n];

		FUNC4(zbr);
		err = FUNC9(c, zbr->lnum, zbr->len);
		zbr->lnum = lnum;
		zbr->offs = offs;
		zbr->len = len;
	} else
		err = found;
	if (!err)
		err = FUNC1(c, 0);
	FUNC7(&c->tnc_mutex);

	return err;
}