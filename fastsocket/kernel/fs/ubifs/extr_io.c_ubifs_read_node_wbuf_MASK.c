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
struct ubifs_wbuf {int lnum; int offs; int buf; int /*<<< orphan*/  lock; int /*<<< orphan*/  jhead; struct ubifs_info* c; } ;
struct ubifs_info {int leb_cnt; int leb_size; int /*<<< orphan*/  ubi; } ;
struct ubifs_ch {int node_type; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int EBADMSG ; 
 int EINVAL ; 
 int UBIFS_NODE_TYPES_CNT ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info const*,void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,void*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (struct ubifs_info const*,void*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,...) ; 
 int FUNC13 (struct ubifs_info const*,void*,int,int,int,int) ; 

int FUNC14(struct ubifs_wbuf *wbuf, void *buf, int type, int len,
			 int lnum, int offs)
{
	const struct ubifs_info *c = wbuf->c;
	int err, rlen, overlap;
	struct ubifs_ch *ch = buf;

	FUNC2("LEB %d:%d, %s, length %d, jhead %s", lnum, offs,
	       FUNC4(type), len, FUNC3(wbuf->jhead));
	FUNC10(wbuf && lnum >= 0 && lnum < c->leb_cnt && offs >= 0);
	FUNC10(!(offs & 7) && offs < c->leb_size);
	FUNC10(type >= 0 && type < UBIFS_NODE_TYPES_CNT);

	FUNC7(&wbuf->lock);
	overlap = (lnum == wbuf->lnum && offs + len > wbuf->offs);
	if (!overlap) {
		/* We may safely unlock the write-buffer and read the data */
		FUNC8(&wbuf->lock);
		return FUNC13(c, buf, type, len, lnum, offs);
	}

	/* Don't read under wbuf */
	rlen = wbuf->offs - offs;
	if (rlen < 0)
		rlen = 0;

	/* Copy the rest from the write-buffer */
	FUNC6(buf + rlen, wbuf->buf + offs + rlen - wbuf->offs, len - rlen);
	FUNC8(&wbuf->lock);

	if (rlen > 0) {
		/* Read everything that goes before write-buffer */
		err = FUNC9(c->ubi, lnum, buf, offs, rlen);
		if (err && err != -EBADMSG) {
			FUNC12("failed to read node %d from LEB %d:%d, "
				  "error %d", type, lnum, offs, err);
			FUNC1();
			return err;
		}
	}

	if (type != ch->node_type) {
		FUNC12("bad node type (%d but expected %d)",
			  ch->node_type, type);
		goto out;
	}

	err = FUNC11(c, buf, lnum, offs, 0, 0);
	if (err) {
		FUNC12("expected node type %d", type);
		return err;
	}

	rlen = FUNC5(ch->len);
	if (rlen != len) {
		FUNC12("bad node length %d, expected %d", rlen, len);
		goto out;
	}

	return 0;

out:
	FUNC12("bad node at LEB %d:%d", lnum, offs);
	FUNC0(c, buf);
	FUNC1();
	return -EINVAL;
}