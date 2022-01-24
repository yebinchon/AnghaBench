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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct inode*,struct buffer_head**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,struct buffer_head*,int,char const*,void*,size_t) ; 

__attribute__((used)) static int FUNC5(struct inode *inode,
			   int name_index,
			   const char *name,
			   void *buffer,
			   size_t buffer_size)
{
	int ret;
	struct buffer_head *di_bh = NULL;

	ret = FUNC2(inode, &di_bh, 0);
	if (ret < 0) {
		FUNC1(ret);
		return ret;
	}
	ret = FUNC4(inode, di_bh, name_index,
				     name, buffer, buffer_size);

	FUNC3(inode, 0);

	FUNC0(di_bh);

	return ret;
}