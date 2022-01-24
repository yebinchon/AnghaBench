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
struct ubifs_unclean_leb {int lnum; int endpt; } ;
struct ubifs_info {int min_io_size; int /*<<< orphan*/  ubi; int /*<<< orphan*/  sbuf; } ;
struct ubifs_ch {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EBADMSG ; 
 int EUCLEAN ; 
 int SCANNED_A_NODE ; 
 int SCANNED_EMPTY_SPACE ; 
 int /*<<< orphan*/  UBI_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,void*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,void*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 int FUNC7 (struct ubifs_info const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info const*,void*,int) ; 
 int FUNC9 (struct ubifs_info const*,void*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ubifs_info const*,int,int,void*) ; 

__attribute__((used)) static int FUNC11(const struct ubifs_info *c,
				struct ubifs_unclean_leb *ucleb, void *sbuf)
{
	int err, lnum = ucleb->lnum, offs = 0, len = ucleb->endpt, quiet = 1;
	void *buf = sbuf;

	FUNC2("LEB %d len %d", lnum, len);

	if (len == 0) {
		/* Nothing to read, just unmap it */
		err = FUNC7(c, lnum);
		if (err)
			return err;
		return 0;
	}

	err = FUNC5(c->ubi, lnum, buf, offs, len);
	if (err && err != -EBADMSG)
		return err;

	while (len >= 8) {
		int ret;

		FUNC1();

		/* Scan quietly until there is an error */
		ret = FUNC9(c, buf, len, lnum, offs, quiet);

		if (ret == SCANNED_A_NODE) {
			/* A valid node, and not a padding node */
			struct ubifs_ch *ch = buf;
			int node_len;

			node_len = FUNC0(FUNC3(ch->len), 8);
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
			FUNC6("unexpected empty space at %d:%d",
				  lnum, offs);
			return -EUCLEAN;
		}

		if (quiet) {
			/* Redo the last scan but noisily */
			quiet = 0;
			continue;
		}

		FUNC10(c, lnum, offs, buf);
		return -EUCLEAN;
	}

	/* Pad to min_io_size */
	len = FUNC0(ucleb->endpt, c->min_io_size);
	if (len > ucleb->endpt) {
		int pad_len = len - FUNC0(ucleb->endpt, 8);

		if (pad_len > 0) {
			buf = c->sbuf + len - pad_len;
			FUNC8(c, buf, pad_len);
		}
	}

	/* Write back the LEB atomically */
	err = FUNC4(c->ubi, lnum, sbuf, len, UBI_UNKNOWN);
	if (err)
		return err;

	FUNC2("cleaned LEB %d", lnum);

	return 0;
}