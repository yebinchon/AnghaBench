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
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {int b_blocknr; int /*<<< orphan*/  b_data; scalar_t__ b_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int FUNC6 (struct inode*,unsigned int,struct buffer_head*,int) ; 

__attribute__((used)) static struct buffer_head *FUNC7(struct inode *inode,
				       unsigned int fragment,
				       int create, int *err)
{
	struct buffer_head dummy;
	int error;

	dummy.b_state = 0;
	dummy.b_blocknr = -1000;
	error = FUNC6(inode, fragment, &dummy, create);
	*err = error;
	if (!error && FUNC0(&dummy)) {
		struct buffer_head *bh;
		bh = FUNC4(inode->i_sb, dummy.b_blocknr);
		if (FUNC1(&dummy)) {
			FUNC3(bh->b_data, 0, inode->i_sb->s_blocksize);
			FUNC5(bh);
			FUNC2(bh);
		}
		return bh;
	}
	return NULL;
}