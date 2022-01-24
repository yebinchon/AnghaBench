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
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int tmp ; 
 int tst ; 

__attribute__((used)) static struct buffer_head *FUNC6(struct inode *inode, int nr,
				       int create)
{
	struct buffer_head *result = NULL;

	if ( nr >= 0 )
		nr = FUNC2( inode, nr );
	if (nr) {
		result = FUNC5(inode->i_sb, nr);
		return result;
	}
	if (!create) {
		return NULL;
	}
#if 0
	tmp = qnx4_new_block(inode->i_sb);
	if (!tmp) {
		return NULL;
	}
	result = sb_getblk(inode->i_sb, tmp);
	if (tst) {
		qnx4_free_block(inode->i_sb, tmp);
		brelse(result);
		goto repeat;
	}
	tst = tmp;
#endif
	inode->i_ctime = CURRENT_TIME_SEC;
	FUNC1(inode);
	return result;
}