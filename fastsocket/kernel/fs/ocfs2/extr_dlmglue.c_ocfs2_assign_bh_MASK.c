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
 int FUNC2 (struct inode*,struct buffer_head**) ; 

__attribute__((used)) static int FUNC3(struct inode *inode,
			   struct buffer_head **ret_bh,
			   struct buffer_head *passed_bh)
{
	int status;

	if (passed_bh) {
		/* Ok, the update went to disk for us, use the
		 * returned bh. */
		*ret_bh = passed_bh;
		FUNC0(*ret_bh);

		return 0;
	}

	status = FUNC2(inode, ret_bh);
	if (status < 0)
		FUNC1(status);

	return status;
}