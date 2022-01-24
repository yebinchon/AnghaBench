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
struct ubifs_scan_leb {scalar_t__ ecc; } ;
struct ubifs_info {int leb_size; int min_io_size; } ;
struct ubifs_ch {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 struct ubifs_scan_leb* FUNC1 (int) ; 
 int EUCLEAN ; 
 scalar_t__ FUNC2 (struct ubifs_scan_leb*) ; 
#define  SCANNED_A_BAD_PAD_NODE 130 
#define  SCANNED_A_CORRUPT_NODE 129 
 int SCANNED_A_NODE ; 
 int SCANNED_EMPTY_SPACE ; 
#define  SCANNED_GARBAGE 128 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,void**,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int) ; 
 scalar_t__ FUNC8 (struct ubifs_scan_leb*,int*) ; 
 int FUNC9 (void*,int) ; 
 int FUNC10 (struct ubifs_info*,struct ubifs_scan_leb*,int) ; 
 int /*<<< orphan*/  FUNC11 (void*,int) ; 
 scalar_t__ FUNC12 (struct ubifs_info*,void*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct ubifs_info*,void*,int,int,int) ; 
 int FUNC15 (struct ubifs_info*,struct ubifs_scan_leb*,void*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ubifs_info*,struct ubifs_scan_leb*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,...) ; 
 int FUNC18 (struct ubifs_info*,void*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct ubifs_scan_leb*) ; 
 int /*<<< orphan*/  FUNC20 (struct ubifs_info*,int,int,void*) ; 
 struct ubifs_scan_leb* FUNC21 (struct ubifs_info*,int,int,void*) ; 

struct ubifs_scan_leb *FUNC22(struct ubifs_info *c, int lnum,
					 int offs, void *sbuf, int grouped)
{
	int err, len = c->leb_size - offs, need_clean = 0, quiet = 1;
	int empty_chkd = 0, start = offs;
	struct ubifs_scan_leb *sleb;
	void *buf = sbuf + offs;

	FUNC6("%d:%d", lnum, offs);

	sleb = FUNC21(c, lnum, offs, sbuf);
	if (FUNC2(sleb))
		return sleb;

	if (sleb->ecc)
		need_clean = 1;

	while (len >= 8) {
		int ret;

		FUNC7("look at LEB %d:%d (%d bytes left)",
			 lnum, offs, len);

		FUNC4();

		/*
		 * Scan quietly until there is an error from which we cannot
		 * recover
		 */
		ret = FUNC18(c, buf, len, lnum, offs, quiet);

		if (ret == SCANNED_A_NODE) {
			/* A valid node, and not a padding node */
			struct ubifs_ch *ch = buf;
			int node_len;

			err = FUNC15(c, sleb, buf, offs);
			if (err)
				goto error;
			node_len = FUNC0(FUNC13(ch->len), 8);
			offs += node_len;
			buf += node_len;
			len -= node_len;
			continue;
		}

		if (ret > 0) {
			/* Padding bytes or a valid padding node */
			offs += ret;
			buf += ret;
			len -= ret;
			continue;
		}

		if (ret == SCANNED_EMPTY_SPACE) {
			if (!FUNC11(buf, len)) {
				if (!FUNC12(c, buf, offs))
					break;
				FUNC3(c, &buf, lnum, &offs, &len);
				need_clean = 1;
			}
			empty_chkd = 1;
			break;
		}

		if (ret == SCANNED_GARBAGE || ret == SCANNED_A_BAD_PAD_NODE)
			if (FUNC12(c, buf, offs)) {
				FUNC3(c, &buf, lnum, &offs, &len);
				need_clean = 1;
				empty_chkd = 1;
				break;
			}

		if (ret == SCANNED_A_CORRUPT_NODE)
			if (FUNC14(c, buf, len, lnum, offs)) {
				FUNC3(c, &buf, lnum, &offs, &len);
				need_clean = 1;
				empty_chkd = 1;
				break;
			}

		if (quiet) {
			/* Redo the last scan but noisily */
			quiet = 0;
			continue;
		}

		switch (ret) {
		case SCANNED_GARBAGE:
			FUNC5("garbage");
			goto corrupted;
		case SCANNED_A_CORRUPT_NODE:
		case SCANNED_A_BAD_PAD_NODE:
			FUNC5("bad node");
			goto corrupted;
		default:
			FUNC5("unknown");
			err = -EINVAL;
			goto error;
		}
	}

	if (!empty_chkd && !FUNC11(buf, len)) {
		if (FUNC12(c, buf, offs)) {
			FUNC3(c, &buf, lnum, &offs, &len);
			need_clean = 1;
		} else {
			int corruption = FUNC9(buf, len);

			FUNC17("corrupt empty space LEB %d:%d, corruption "
				  "starts at %d", lnum, offs, corruption);
			/* Make sure we dump interesting non-0xFF data */
			offs = corruption;
			buf += corruption;
			goto corrupted;
		}
	}

	/* Drop nodes from incomplete group */
	if (grouped && FUNC8(sleb, &offs)) {
		buf = sbuf + offs;
		len = c->leb_size - offs;
		FUNC3(c, &buf, lnum, &offs, &len);
		need_clean = 1;
	}

	if (offs % c->min_io_size) {
		FUNC3(c, &buf, lnum, &offs, &len);
		need_clean = 1;
	}

	FUNC16(c, sleb, lnum, offs);

	if (need_clean) {
		err = FUNC10(c, sleb, start);
		if (err)
			goto error;
	}

	return sleb;

corrupted:
	FUNC20(c, lnum, offs, buf);
	err = -EUCLEAN;
error:
	FUNC17("LEB %d scanning failed", lnum);
	FUNC19(sleb);
	return FUNC1(err);
}