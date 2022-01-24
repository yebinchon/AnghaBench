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
struct ubifs_info {int leb_size; unsigned long long cmt_no; int /*<<< orphan*/  ubi; } ;
struct TYPE_2__ {scalar_t__ node_type; int /*<<< orphan*/  sqnum; } ;
struct ubifs_cs_node {TYPE_1__ ch; int /*<<< orphan*/  cmt_no; } ;

/* Variables and functions */
 int EBADMSG ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SCANNED_A_NODE ; 
 scalar_t__ UBIFS_CS_NODE ; 
 int UBIFS_CS_NODE_SZ ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_cs_node*) ; 
 struct ubifs_cs_node* FUNC3 (int,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,void*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (struct ubifs_info*,struct ubifs_cs_node*,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ubifs_info *c, int lnum, int offs,
			unsigned long long *cs_sqnum)
{
	struct ubifs_cs_node *cs_node = NULL;
	int err, ret;

	FUNC1("at %d:%d", lnum, offs);
	cs_node = FUNC3(UBIFS_CS_NODE_SZ, GFP_KERNEL);
	if (!cs_node)
		return -ENOMEM;
	if (c->leb_size - offs < UBIFS_CS_NODE_SZ)
		goto out_err;
	err = FUNC5(c->ubi, lnum, (void *)cs_node, offs, UBIFS_CS_NODE_SZ);
	if (err && err != -EBADMSG)
		goto out_free;
	ret = FUNC7(c, cs_node, UBIFS_CS_NODE_SZ, lnum, offs, 0);
	if (ret != SCANNED_A_NODE) {
		FUNC0("Not a valid node");
		goto out_err;
	}
	if (cs_node->ch.node_type != UBIFS_CS_NODE) {
		FUNC0("Node a CS node, type is %d", cs_node->ch.node_type);
		goto out_err;
	}
	if (FUNC4(cs_node->cmt_no) != c->cmt_no) {
		FUNC0("CS node cmt_no %llu != current cmt_no %llu",
			(unsigned long long)FUNC4(cs_node->cmt_no),
			c->cmt_no);
		goto out_err;
	}
	*cs_sqnum = FUNC4(cs_node->ch.sqnum);
	FUNC1("commit start sqnum %llu", *cs_sqnum);
	FUNC2(cs_node);
	return 0;

out_err:
	err = -EINVAL;
out_free:
	FUNC6("failed to get CS sqnum");
	FUNC2(cs_node);
	return err;
}