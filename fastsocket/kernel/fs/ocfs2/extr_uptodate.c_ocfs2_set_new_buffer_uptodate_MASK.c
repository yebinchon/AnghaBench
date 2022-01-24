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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_caching_info*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_caching_info*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 

void FUNC6(struct ocfs2_caching_info *ci,
				   struct buffer_head *bh)
{
	/* This should definitely *not* exist in our cache */
	FUNC0(FUNC1(ci, bh));

	FUNC5(bh);

	FUNC2(ci);
	FUNC4(ci, bh);
	FUNC3(ci);
}