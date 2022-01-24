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
struct buffer_head {int /*<<< orphan*/  b_end_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  WRITE_BARRIER ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  reiserfs_end_ordered_io ; 
 int FUNC4 (int /*<<< orphan*/ ,struct buffer_head*) ; 

__attribute__((used)) static int FUNC5(struct buffer_head *bh)
{
	FUNC3(bh);
	bh->b_end_io = reiserfs_end_ordered_io;
	FUNC2(bh);
	if (!FUNC1(bh))
		FUNC0();
	return FUNC4(WRITE_BARRIER, bh);
}