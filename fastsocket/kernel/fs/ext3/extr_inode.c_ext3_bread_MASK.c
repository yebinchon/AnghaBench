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
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  READ_META ; 
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 struct buffer_head* FUNC1 (int /*<<< orphan*/ *,struct inode*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 

struct buffer_head *FUNC5(handle_t *handle, struct inode *inode,
			       int block, int create, int *err)
{
	struct buffer_head * bh;

	bh = FUNC1(handle, inode, block, create, err);
	if (!bh)
		return bh;
	if (FUNC0(bh))
		return bh;
	FUNC2(READ_META, 1, &bh);
	FUNC4(bh);
	if (FUNC0(bh))
		return bh;
	FUNC3(bh);
	*err = -EIO;
	return NULL;
}