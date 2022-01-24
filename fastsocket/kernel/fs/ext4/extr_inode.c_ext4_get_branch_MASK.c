#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int ext4_lblk_t ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_7__ {int i_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ Indirect ;

/* Variables and functions */
 int EIO ; 
 TYPE_5__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct buffer_head*,int) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 struct buffer_head* FUNC7 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static Indirect *FUNC9(struct inode *inode, int depth,
				 ext4_lblk_t  *offsets,
				 Indirect chain[4], int *err)
{
	struct super_block *sb = inode->i_sb;
	Indirect *p = chain;
	struct buffer_head *bh;

	*err = 0;
	/* i_data is not going away, no lock needed */
	FUNC1(chain, NULL, FUNC0(inode)->i_data + *offsets);
	if (!p->key)
		goto no_block;
	while (--depth) {
		bh = FUNC7(sb, FUNC5(p->key));
		if (FUNC8(!bh))
			goto failure;

		if (!FUNC3(bh)) {
			if (FUNC2(bh) < 0) {
				FUNC6(bh);
				goto failure;
			}
			/* validate block references */
			if (FUNC4(inode, bh)) {
				FUNC6(bh);
				goto failure;
			}
		}

		FUNC1(++p, bh, *((__le32 *)bh->b_data + *++offsets));
		/* Reader: end */
		if (!p->key)
			goto no_block;
	}
	return NULL;

failure:
	*err = -EIO;
no_block:
	return p;
}