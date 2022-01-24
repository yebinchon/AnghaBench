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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct ubifs_scan_leb {int dummy; } ;
struct ubifs_info {int leb_size; int min_io_size; } ;
struct ubifs_ch {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 struct ubifs_scan_leb* FUNC1 (int) ; 
 int EUCLEAN ; 
 scalar_t__ FUNC2 (struct ubifs_scan_leb*) ; 
#define  SCANNED_A_BAD_PAD_NODE 131 
#define  SCANNED_A_CORRUPT_NODE 130 
#define  SCANNED_A_NODE 129 
 int SCANNED_EMPTY_SPACE ; 
#define  SCANNED_GARBAGE 128 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ubifs_info const*,struct ubifs_scan_leb*,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info const*,struct ubifs_scan_leb*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 
 int FUNC10 (struct ubifs_info const*,void*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ubifs_scan_leb*) ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_info const*,int,int,void*) ; 
 struct ubifs_scan_leb* FUNC13 (struct ubifs_info const*,int,int,void*) ; 

struct ubifs_scan_leb *FUNC14(const struct ubifs_info *c, int lnum,
				  int offs, void *sbuf, int quiet)
{
	void *buf = sbuf + offs;
	int err, len = c->leb_size - offs;
	struct ubifs_scan_leb *sleb;

	sleb = FUNC13(c, lnum, offs, sbuf);
	if (FUNC2(sleb))
		return sleb;

	while (len >= 8) {
		struct ubifs_ch *ch = buf;
		int node_len, ret;

		FUNC5("look at LEB %d:%d (%d bytes left)",
			 lnum, offs, len);

		FUNC3();

		ret = FUNC10(c, buf, len, lnum, offs, quiet);
		if (ret > 0) {
			/* Padding bytes or a valid padding node */
			offs += ret;
			buf += ret;
			len -= ret;
			continue;
		}

		if (ret == SCANNED_EMPTY_SPACE)
			/* Empty space is checked later */
			break;

		switch (ret) {
		case SCANNED_GARBAGE:
			FUNC4("garbage");
			goto corrupted;
		case SCANNED_A_NODE:
			break;
		case SCANNED_A_CORRUPT_NODE:
		case SCANNED_A_BAD_PAD_NODE:
			FUNC4("bad node");
			goto corrupted;
		default:
			FUNC4("unknown");
			err = -EINVAL;
			goto error;
		}

		err = FUNC7(c, sleb, buf, offs);
		if (err)
			goto error;

		node_len = FUNC0(FUNC6(ch->len), 8);
		offs += node_len;
		buf += node_len;
		len -= node_len;
	}

	if (offs % c->min_io_size) {
		if (!quiet)
			FUNC9("empty space starts at non-aligned offset %d",
				  offs);
		goto corrupted;;
	}

	FUNC8(c, sleb, lnum, offs);

	for (; len > 4; offs += 4, buf = buf + 4, len -= 4)
		if (*(uint32_t *)buf != 0xffffffff)
			break;
	for (; len; offs++, buf++, len--)
		if (*(uint8_t *)buf != 0xff) {
			if (!quiet)
				FUNC9("corrupt empty space at LEB %d:%d",
					  lnum, offs);
			goto corrupted;
		}

	return sleb;

corrupted:
	if (!quiet) {
		FUNC12(c, lnum, offs, buf);
		FUNC9("LEB %d scanning failed", lnum);
	}
	err = -EUCLEAN;
	FUNC11(sleb);
	return FUNC1(err);

error:
	FUNC9("LEB %d scanning failed, error %d", lnum, err);
	FUNC11(sleb);
	return FUNC1(err);
}