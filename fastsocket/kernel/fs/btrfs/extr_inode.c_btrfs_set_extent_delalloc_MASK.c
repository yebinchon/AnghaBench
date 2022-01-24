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
typedef  int u64 ;
struct inode {int dummy; } ;
struct extent_state {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  io_tree; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,struct extent_state**,int /*<<< orphan*/ ) ; 

int FUNC3(struct inode *inode, u64 start, u64 end,
			      struct extent_state **cached_state)
{
	if ((end & (PAGE_CACHE_SIZE - 1)) == 0)
		FUNC1(1);
	return FUNC2(&FUNC0(inode)->io_tree, start, end,
				   cached_state, GFP_NOFS);
}