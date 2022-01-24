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
typedef  int uint32_t ;
struct ubifs_pad_node {int /*<<< orphan*/  pad_len; } ;
struct ubifs_info {int leb_size; } ;
struct ubifs_ch {scalar_t__ node_type; int /*<<< orphan*/  len; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int SCANNED_A_BAD_PAD_NODE ; 
 int SCANNED_A_CORRUPT_NODE ; 
 int SCANNED_A_NODE ; 
 int SCANNED_EMPTY_SPACE ; 
 int SCANNED_GARBAGE ; 
 int UBIFS_CH_SZ ; 
 int UBIFS_NODE_MAGIC ; 
 scalar_t__ UBIFS_PAD_NODE ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info const*,struct ubifs_pad_node*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (void*,int) ; 
 scalar_t__ FUNC7 (struct ubifs_info const*,void*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 

int FUNC9(const struct ubifs_info *c, void *buf, int len, int lnum,
		      int offs, int quiet)
{
	struct ubifs_ch *ch = buf;
	uint32_t magic;

	magic = FUNC5(ch->magic);

	if (magic == 0xFFFFFFFF) {
		FUNC4("hit empty space");
		return SCANNED_EMPTY_SPACE;
	}

	if (magic != UBIFS_NODE_MAGIC)
		return FUNC6(buf, len);

	if (len < UBIFS_CH_SZ)
		return SCANNED_GARBAGE;

	FUNC4("scanning %s", FUNC3(ch->node_type));

	if (FUNC7(c, buf, lnum, offs, quiet, 1))
		return SCANNED_A_CORRUPT_NODE;

	if (ch->node_type == UBIFS_PAD_NODE) {
		struct ubifs_pad_node *pad = buf;
		int pad_len = FUNC5(pad->pad_len);
		int node_len = FUNC5(ch->len);

		/* Validate the padding node */
		if (pad_len < 0 ||
		    offs + node_len + pad_len > c->leb_size) {
			if (!quiet) {
				FUNC8("bad pad node at LEB %d:%d",
					  lnum, offs);
				FUNC1(c, pad);
			}
			return SCANNED_A_BAD_PAD_NODE;
		}

		/* Make the node pads to 8-byte boundary */
		if ((node_len + pad_len) & 7) {
			if (!quiet)
				FUNC2("bad padding length %d - %d",
					offs, offs + node_len + pad_len);
			return SCANNED_A_BAD_PAD_NODE;
		}

		FUNC4("%d bytes padded, offset now %d",
			 pad_len, FUNC0(offs + node_len + pad_len, 8));

		return node_len + pad_len;
	}

	return SCANNED_A_NODE;
}