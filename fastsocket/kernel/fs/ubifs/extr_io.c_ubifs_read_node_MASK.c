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
struct ubifs_info {int leb_cnt; int leb_size; int /*<<< orphan*/  ubi; } ;
struct ubifs_ch {int node_type; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int EBADMSG ; 
 int EINVAL ; 
 int UBIFS_CH_SZ ; 
 int UBIFS_NODE_TYPES_CNT ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info const*,void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,void*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct ubifs_info const*,void*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,...) ; 

int FUNC9(const struct ubifs_info *c, void *buf, int type, int len,
		    int lnum, int offs)
{
	int err, l;
	struct ubifs_ch *ch = buf;

	FUNC2("LEB %d:%d, %s, length %d", lnum, offs, FUNC3(type), len);
	FUNC6(lnum >= 0 && lnum < c->leb_cnt && offs >= 0);
	FUNC6(len >= UBIFS_CH_SZ && offs + len <= c->leb_size);
	FUNC6(!(offs & 7) && offs < c->leb_size);
	FUNC6(type >= 0 && type < UBIFS_NODE_TYPES_CNT);

	err = FUNC5(c->ubi, lnum, buf, offs, len);
	if (err && err != -EBADMSG) {
		FUNC8("cannot read node %d from LEB %d:%d, error %d",
			  type, lnum, offs, err);
		return err;
	}

	if (type != ch->node_type) {
		FUNC8("bad node type (%d but expected %d)",
			  ch->node_type, type);
		goto out;
	}

	err = FUNC7(c, buf, lnum, offs, 0, 0);
	if (err) {
		FUNC8("expected node type %d", type);
		return err;
	}

	l = FUNC4(ch->len);
	if (l != len) {
		FUNC8("bad node length %d, expected %d", l, len);
		goto out;
	}

	return 0;

out:
	FUNC8("bad node at LEB %d:%d", lnum, offs);
	FUNC0(c, buf);
	FUNC1();
	return -EINVAL;
}