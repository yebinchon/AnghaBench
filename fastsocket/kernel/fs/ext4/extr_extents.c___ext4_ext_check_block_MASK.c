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
struct inode {int dummy; } ;
struct ext4_extent_header {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 int FUNC1 (struct inode*,struct ext4_extent_header*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC3(const char *function, unsigned int line,
				  struct inode *inode,
				  struct ext4_extent_header *eh,
				  int depth,
				  struct buffer_head *bh)
{
	int ret;

	if (FUNC0(bh))
		return 0;
	ret = FUNC1(inode, eh, depth);
	if (ret)
		return ret;
	FUNC2(bh);
	return ret;
}