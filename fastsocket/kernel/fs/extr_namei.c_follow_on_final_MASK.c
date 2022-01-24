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
struct inode {int /*<<< orphan*/  i_mode; TYPE_1__* i_op; } ;
struct TYPE_2__ {int /*<<< orphan*/  follow_link; } ;

/* Variables and functions */
 unsigned int LOOKUP_FOLLOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct inode *inode, unsigned lookup_flags)
{
	return inode && FUNC1(inode->i_op->follow_link) &&
		((lookup_flags & LOOKUP_FOLLOW) || FUNC0(inode->i_mode));
}