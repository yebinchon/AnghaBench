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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct qstr {int hash; } ;
struct inode {int dummy; } ;
struct gfs2_leaf {int /*<<< orphan*/  lf_next; int /*<<< orphan*/  lf_depth; } ;
struct gfs2_inode {int i_depth; int /*<<< orphan*/  i_inode; int /*<<< orphan*/  i_gl; } ;
struct buffer_head {scalar_t__ b_data; int /*<<< orphan*/  b_blocknr; } ;

/* Variables and functions */
 int ENOSPC ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct gfs2_inode*,int,struct buffer_head**) ; 
 int FUNC6 (struct gfs2_inode*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_inode*,scalar_t__) ; 
 int FUNC9 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 struct gfs2_leaf* FUNC11 (struct inode*,struct buffer_head**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct inode *inode, const struct qstr *name)
{
	struct buffer_head *bh, *obh;
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_leaf *leaf, *oleaf;
	int error;
	u32 index;
	u64 bn;

	index = name->hash >> (32 - ip->i_depth);
	error = FUNC5(ip, index, &obh);
	if (error)
		return error;
	do {
		oleaf = (struct gfs2_leaf *)obh->b_data;
		bn = FUNC2(oleaf->lf_next);
		if (!bn)
			break;
		FUNC3(obh);
		error = FUNC6(ip, bn, &obh);
		if (error)
			return error;
	} while(1);

	FUNC10(ip->i_gl, obh);

	leaf = FUNC11(inode, &bh, FUNC1(oleaf->lf_depth));
	if (!leaf) {
		FUNC3(obh);
		return -ENOSPC;
	}
	oleaf->lf_next = FUNC4(bh->b_blocknr);
	FUNC3(bh);
	FUNC3(obh);

	error = FUNC9(ip, &bh);
	if (error)
		return error;
	FUNC10(ip->i_gl, bh);
	FUNC7(&ip->i_inode, 1);
	FUNC8(ip, bh->b_data);
	FUNC3(bh);
	return 0;
}