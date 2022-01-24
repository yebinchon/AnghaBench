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
struct ubifs_zbranch {int lnum; scalar_t__ offs; int len; int /*<<< orphan*/  key; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_ch {scalar_t__ node_type; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (union ubifs_key*) ; 
 int EINVAL ; 
 scalar_t__ UBIFS_DATA_NODE ; 
 int UBIFS_KEY_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,void*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,void*,union ubifs_key*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,int /*<<< orphan*/ *,union ubifs_key*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ubifs_info*,void*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 

__attribute__((used)) static int FUNC10(struct ubifs_info *c, void *buf,
			      struct ubifs_zbranch *zbr)
{
	union ubifs_key key1;
	struct ubifs_ch *ch = buf;
	int err, len;

	if (ch->node_type != UBIFS_DATA_NODE) {
		FUNC9("bad node type (%d but expected %d)",
			  ch->node_type, UBIFS_DATA_NODE);
		goto out_err;
	}

	err = FUNC8(c, buf, zbr->lnum, zbr->offs, 0, 0);
	if (err) {
		FUNC9("expected node type %d", UBIFS_DATA_NODE);
		goto out;
	}

	len = FUNC7(ch->len);
	if (len != zbr->len) {
		FUNC9("bad node length %d, expected %d", len, zbr->len);
		goto out_err;
	}

	/* Make sure the key of the read node is correct */
	FUNC5(c, buf + UBIFS_KEY_OFFSET, &key1);
	if (!FUNC6(c, &zbr->key, &key1)) {
		FUNC9("bad key in node at LEB %d:%d",
			  zbr->lnum, zbr->offs);
		FUNC4("looked for key %s found node's key %s",
			FUNC0(&zbr->key), FUNC1(&key1));
		goto out_err;
	}

	return 0;

out_err:
	err = -EINVAL;
out:
	FUNC9("bad node at LEB %d:%d", zbr->lnum, zbr->offs);
	FUNC2(c, buf);
	FUNC3();
	return err;
}