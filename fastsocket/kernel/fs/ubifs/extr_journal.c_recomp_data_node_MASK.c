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
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct ubifs_data_node {int /*<<< orphan*/  size; int /*<<< orphan*/  compr_type; int /*<<< orphan*/  data; TYPE_1__ ch; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int UBIFS_BLOCK_SIZE ; 
 int UBIFS_DATA_NODE_SZ ; 
 int WORST_COMPR_FACTOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int,int /*<<< orphan*/ *,int*,int*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,void*,int*,int) ; 

__attribute__((used)) static int FUNC9(struct ubifs_data_node *dn, int *new_len)
{
	void *buf;
	int err, len, compr_type, out_len;

	out_len = FUNC5(dn->size);
	buf = FUNC3(out_len * WORST_COMPR_FACTOR, GFP_NOFS);
	if (!buf)
		return -ENOMEM;

	len = FUNC5(dn->ch.len) - UBIFS_DATA_NODE_SZ;
	compr_type = FUNC4(dn->compr_type);
	err = FUNC8(&dn->data, len, buf, &out_len, compr_type);
	if (err)
		goto out;

	FUNC7(buf, *new_len, &dn->data, &out_len, &compr_type);
	FUNC6(out_len <= UBIFS_BLOCK_SIZE);
	dn->compr_type = FUNC0(compr_type);
	dn->size = FUNC1(*new_len);
	*new_len = UBIFS_DATA_NODE_SZ + out_len;
out:
	FUNC2(buf);
	return err;
}