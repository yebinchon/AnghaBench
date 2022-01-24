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
 int /*<<< orphan*/  end_buffer_write_sync ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 

void FUNC5(struct buffer_head *bh, int rw)
{
	FUNC1(bh);
	if (!FUNC3(bh)) {
		FUNC4(bh);
		return;
	}
	bh->b_end_io = end_buffer_write_sync;
	FUNC0(bh);
	FUNC2(rw, bh);
}