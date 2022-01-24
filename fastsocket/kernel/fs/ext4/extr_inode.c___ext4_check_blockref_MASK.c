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
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(const char *function, struct inode *inode,
				 __le32 *p, unsigned int max)
{
	__le32 *bref = p;
	unsigned int blk;

	while (bref < p+max) {
		blk = FUNC3(*bref++);
		if (blk &&
		    FUNC4(!FUNC2(FUNC0(inode->i_sb),
						    blk, 1))) {
			FUNC1(inode->i_sb, function,
				   "invalid block reference %u "
				   "in inode #%lu", blk, inode->i_ino);
			return -EIO;
		}
	}
	return 0;
}