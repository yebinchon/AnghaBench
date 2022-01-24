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
struct inode {int /*<<< orphan*/  i_ino; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,struct buffer_head**) ; 
 struct buffer_head* FUNC4 (struct inode*,unsigned int,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 

struct buffer_head * FUNC6 (struct inode * inode, unsigned fragment,
	int create, int * err)
{
	struct buffer_head * bh;

	FUNC0("ENTER, ino %lu, fragment %u\n", inode->i_ino, fragment);
	bh = FUNC4 (inode, fragment, create, err);
	if (!bh || FUNC2(bh)) 		
		return bh;
	FUNC3 (READ, 1, &bh);
	FUNC5 (bh);
	if (FUNC2(bh))
		return bh;
	FUNC1 (bh);
	*err = -EIO;
	return NULL;
}