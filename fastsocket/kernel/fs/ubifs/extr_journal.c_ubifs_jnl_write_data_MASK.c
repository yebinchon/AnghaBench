#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_inode {int flags; int compr_type; } ;
struct ubifs_info {TYPE_2__* jheads; } ;
struct TYPE_3__ {int /*<<< orphan*/  node_type; } ;
struct ubifs_data_node {int /*<<< orphan*/  compr_type; int /*<<< orphan*/  data; int /*<<< orphan*/  size; int /*<<< orphan*/  key; TYPE_1__ ch; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  wbuf; } ;

/* Variables and functions */
 size_t DATAHD ; 
 int /*<<< orphan*/  FUNC0 (union ubifs_key const*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int UBIFS_BLOCK_SIZE ; 
 int UBIFS_COMPR_FL ; 
 int UBIFS_COMPR_NONE ; 
 int /*<<< orphan*/  UBIFS_DATA_NODE ; 
 int UBIFS_DATA_NODE_SZ ; 
 int WORST_COMPR_FACTOR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,union ubifs_key const*) ; 
 scalar_t__ FUNC6 (struct ubifs_info*,union ubifs_key const*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*,union ubifs_key const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_data_node*) ; 
 struct ubifs_data_node* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ubifs_info*,size_t,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ubifs_info*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (void const*,int,int /*<<< orphan*/ *,int*,int*) ; 
 struct ubifs_inode* FUNC14 (struct inode const*) ; 
 int /*<<< orphan*/  FUNC15 (struct ubifs_info*,int) ; 
 int FUNC16 (struct ubifs_info*,union ubifs_key const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC18 (struct ubifs_info*,size_t,struct ubifs_data_node*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC19 (struct ubifs_data_node*) ; 

int FUNC20(struct ubifs_info *c, const struct inode *inode,
			 const union ubifs_key *key, const void *buf, int len)
{
	struct ubifs_data_node *data;
	int err, lnum, offs, compr_type, out_len;
	int dlen = UBIFS_DATA_NODE_SZ + UBIFS_BLOCK_SIZE * WORST_COMPR_FACTOR;
	struct ubifs_inode *ui = FUNC14(inode);

	FUNC3("ino %lu, blk %u, len %d, key %s",
		(unsigned long)FUNC6(c, key), FUNC5(c, key), len,
		FUNC0(key));
	FUNC12(len <= UBIFS_BLOCK_SIZE);

	data = FUNC9(dlen, GFP_NOFS);
	if (!data)
		return -ENOMEM;

	data->ch.node_type = UBIFS_DATA_NODE;
	FUNC7(c, key, &data->key);
	data->size = FUNC2(len);
	FUNC19(data);

	if (!(ui->flags & UBIFS_COMPR_FL))
		/* Compression is disabled for this inode */
		compr_type = UBIFS_COMPR_NONE;
	else
		compr_type = ui->compr_type;

	out_len = dlen - UBIFS_DATA_NODE_SZ;
	FUNC13(buf, len, &data->data, &out_len, &compr_type);
	FUNC12(out_len <= UBIFS_BLOCK_SIZE);

	dlen = UBIFS_DATA_NODE_SZ + out_len;
	data->compr_type = FUNC1(compr_type);

	/* Make reservation before allocating sequence numbers */
	err = FUNC10(c, DATAHD, dlen);
	if (err)
		goto out_free;

	err = FUNC18(c, DATAHD, data, dlen, &lnum, &offs);
	if (err)
		goto out_release;
	FUNC17(&c->jheads[DATAHD].wbuf, FUNC6(c, key));
	FUNC11(c, DATAHD);

	err = FUNC16(c, key, lnum, offs, dlen);
	if (err)
		goto out_ro;

	FUNC4(c);
	FUNC8(data);
	return 0;

out_release:
	FUNC11(c, DATAHD);
out_ro:
	FUNC15(c, err);
	FUNC4(c);
out_free:
	FUNC8(data);
	return err;
}