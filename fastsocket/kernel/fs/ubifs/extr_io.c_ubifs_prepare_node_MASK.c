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
struct ubifs_info {int min_io_size; } ;
struct ubifs_ch {void* crc; scalar_t__* padding; int /*<<< orphan*/  sqnum; int /*<<< orphan*/  group_type; void* len; void* magic; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int UBIFS_CH_SZ ; 
 int /*<<< orphan*/  UBIFS_CRC32_INIT ; 
 int UBIFS_NODE_MAGIC ; 
 int /*<<< orphan*/  UBIFS_NO_NODE_GROUP ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long) ; 
 int FUNC3 (int /*<<< orphan*/ ,void*,int) ; 
 unsigned long long FUNC4 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,void*,int) ; 

void FUNC7(struct ubifs_info *c, void *node, int len, int pad)
{
	uint32_t crc;
	struct ubifs_ch *ch = node;
	unsigned long long sqnum = FUNC4(c);

	FUNC5(len >= UBIFS_CH_SZ);

	ch->magic = FUNC1(UBIFS_NODE_MAGIC);
	ch->len = FUNC1(len);
	ch->group_type = UBIFS_NO_NODE_GROUP;
	ch->sqnum = FUNC2(sqnum);
	ch->padding[0] = ch->padding[1] = 0;
	crc = FUNC3(UBIFS_CRC32_INIT, node + 8, len - 8);
	ch->crc = FUNC1(crc);

	if (pad) {
		len = FUNC0(len, 8);
		pad = FUNC0(len, c->min_io_size) - len;
		FUNC6(c, node + len, pad);
	}
}