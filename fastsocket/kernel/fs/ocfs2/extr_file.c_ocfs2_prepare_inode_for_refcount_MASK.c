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
typedef  size_t u32 ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  size_t loff_t ;
struct TYPE_2__ {size_t s_clustersize_bits; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC4 (struct inode*,struct buffer_head**,int) ; 
 int FUNC5 (struct inode*,struct buffer_head*,size_t,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct inode *inode,
					    loff_t pos, size_t count,
					    int *meta_level)
{
	int ret;
	struct buffer_head *di_bh = NULL;
	u32 cpos = pos >> FUNC0(inode->i_sb)->s_clustersize_bits;
	u32 clusters =
		FUNC3(inode->i_sb, pos + count) - cpos;

	ret = FUNC4(inode, &di_bh, 1);
	if (ret) {
		FUNC2(ret);
		goto out;
	}

	*meta_level = 1;

	ret = FUNC5(inode, di_bh, cpos, clusters, UINT_MAX);
	if (ret)
		FUNC2(ret);
out:
	FUNC1(di_bh);
	return ret;
}