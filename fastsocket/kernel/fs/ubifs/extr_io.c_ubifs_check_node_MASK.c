#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct ubifs_info {int leb_cnt; int leb_size; scalar_t__ no_chk_data_crc; int /*<<< orphan*/  always_chk_crc; TYPE_1__* ranges; } ;
struct ubifs_ch {int node_type; int /*<<< orphan*/  crc; int /*<<< orphan*/  len; int /*<<< orphan*/  magic; } ;
struct TYPE_2__ {int max_len; int len; int min_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int EUCLEAN ; 
 int /*<<< orphan*/  UBIFS_CRC32_INIT ; 
 int UBIFS_DATA_NODE ; 
 scalar_t__ UBIFS_NODE_MAGIC ; 
 int UBIFS_NODE_TYPES_CNT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info const*,void const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 

int FUNC6(const struct ubifs_info *c, const void *buf, int lnum,
		     int offs, int quiet, int must_chk_crc)
{
	int err = -EINVAL, type, node_len;
	uint32_t crc, node_crc, magic;
	const struct ubifs_ch *ch = buf;

	FUNC4(lnum >= 0 && lnum < c->leb_cnt && offs >= 0);
	FUNC4(!(offs & 7) && offs < c->leb_size);

	magic = FUNC3(ch->magic);
	if (magic != UBIFS_NODE_MAGIC) {
		if (!quiet)
			FUNC5("bad magic %#08x, expected %#08x",
				  magic, UBIFS_NODE_MAGIC);
		err = -EUCLEAN;
		goto out;
	}

	type = ch->node_type;
	if (type < 0 || type >= UBIFS_NODE_TYPES_CNT) {
		if (!quiet)
			FUNC5("bad node type %d", type);
		goto out;
	}

	node_len = FUNC3(ch->len);
	if (node_len + offs > c->leb_size)
		goto out_len;

	if (c->ranges[type].max_len == 0) {
		if (node_len != c->ranges[type].len)
			goto out_len;
	} else if (node_len < c->ranges[type].min_len ||
		   node_len > c->ranges[type].max_len)
		goto out_len;

	if (!must_chk_crc && type == UBIFS_DATA_NODE && !c->always_chk_crc &&
	     c->no_chk_data_crc)
		return 0;

	crc = FUNC0(UBIFS_CRC32_INIT, buf + 8, node_len - 8);
	node_crc = FUNC3(ch->crc);
	if (crc != node_crc) {
		if (!quiet)
			FUNC5("bad CRC: calculated %#08x, read %#08x",
				  crc, node_crc);
		err = -EUCLEAN;
		goto out;
	}

	return 0;

out_len:
	if (!quiet)
		FUNC5("bad node length %d", node_len);
out:
	if (!quiet) {
		FUNC5("bad node at LEB %d:%d", lnum, offs);
		FUNC1(c, buf);
		FUNC2();
	}
	return err;
}