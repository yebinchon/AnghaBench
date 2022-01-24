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
typedef  void* uint32_t ;
struct ubifs_info {scalar_t__ no_chk_data_crc; int /*<<< orphan*/  always_chk_crc; int /*<<< orphan*/  ubi; } ;
struct ubifs_ch {int node_type; int /*<<< orphan*/  crc; int /*<<< orphan*/  len; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  UBIFS_CRC32_INIT ; 
 int UBIFS_DATA_NODE ; 
 void* UBIFS_NODE_MAGIC ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,void*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int,int) ; 

__attribute__((used)) static int FUNC6(const struct ubifs_info *c, void *buf, int type,
			 int len, int lnum, int offs)
{
	int err, node_len;
	struct ubifs_ch *ch = buf;
	uint32_t crc, node_crc;

	FUNC1("LEB %d:%d, %s, length %d", lnum, offs, FUNC2(type), len);

	err = FUNC4(c->ubi, lnum, buf, offs, len);
	if (err) {
		FUNC5("cannot read node type %d from LEB %d:%d, error %d",
			  type, lnum, offs, err);
		return err;
	}

	if (FUNC3(ch->magic) != UBIFS_NODE_MAGIC)
		return 0;

	if (ch->node_type != type)
		return 0;

	node_len = FUNC3(ch->len);
	if (node_len != len)
		return 0;

	if (type == UBIFS_DATA_NODE && !c->always_chk_crc && c->no_chk_data_crc)
		return 1;

	crc = FUNC0(UBIFS_CRC32_INIT, buf + 8, node_len - 8);
	node_crc = FUNC3(ch->crc);
	if (crc != node_crc)
		return 0;

	return 1;
}