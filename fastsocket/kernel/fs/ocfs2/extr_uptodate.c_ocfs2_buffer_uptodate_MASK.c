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
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct ocfs2_caching_info*,struct buffer_head*) ; 

int FUNC3(struct ocfs2_caching_info *ci,
			  struct buffer_head *bh)
{
	/* Doesn't matter if the bh is in our cache or not -- if it's
	 * not marked uptodate then we know it can't have correct
	 * data. */
	if (!FUNC1(bh))
		return 0;

	/* OCFS2 does not allow multiple nodes to be changing the same
	 * block at the same time. */
	if (FUNC0(bh))
		return 1;

	/* Ok, locally the buffer is marked as up to date, now search
	 * our cache to see if we can trust that. */
	return FUNC2(ci, bh);
}