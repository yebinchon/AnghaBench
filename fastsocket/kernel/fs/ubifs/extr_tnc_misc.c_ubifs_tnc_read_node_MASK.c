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
struct ubifs_zbranch {int /*<<< orphan*/  offs; int /*<<< orphan*/  lnum; int /*<<< orphan*/  len; union ubifs_key key; } ;
struct ubifs_wbuf {int dummy; } ;
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union ubifs_key*) ; 
 int /*<<< orphan*/  FUNC1 (union ubifs_key*) ; 
 int EINVAL ; 
 int UBIFS_KEY_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,void*,union ubifs_key*) ; 
 int FUNC5 (struct ubifs_info*,union ubifs_key*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,union ubifs_key*,union ubifs_key*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ubifs_wbuf* FUNC8 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ubifs_info*,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ubifs_wbuf*,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(struct ubifs_info *c, struct ubifs_zbranch *zbr,
			void *node)
{
	union ubifs_key key1, *key = &zbr->key;
	int err, type = FUNC5(c, key);
	struct ubifs_wbuf *wbuf;

	/*
	 * 'zbr' has to point to on-flash node. The node may sit in a bud and
	 * may even be in a write buffer, so we have to take care about this.
	 */
	wbuf = FUNC8(c, zbr->lnum);
	if (wbuf)
		err = FUNC10(wbuf, node, type, zbr->len,
					   zbr->lnum, zbr->offs);
	else
		err = FUNC9(c, node, type, zbr->len, zbr->lnum,
				      zbr->offs);

	if (err) {
		FUNC3("key %s", FUNC0(key));
		return err;
	}

	/* Make sure the key of the read node is correct */
	FUNC4(c, node + UBIFS_KEY_OFFSET, &key1);
	if (!FUNC6(c, key, &key1)) {
		FUNC7("bad key in node at LEB %d:%d",
			  zbr->lnum, zbr->offs);
		FUNC3("looked for key %s found node's key %s",
			FUNC0(key), FUNC1(&key1));
		FUNC2(c, node);
		return -EINVAL;
	}

	return 0;
}