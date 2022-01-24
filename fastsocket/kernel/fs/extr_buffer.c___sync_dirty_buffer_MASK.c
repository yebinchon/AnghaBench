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
struct buffer_head {int /*<<< orphan*/  b_end_io; int /*<<< orphan*/  b_count; } ;

/* Variables and functions */
 int EIO ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_buffer_write_sync ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int FUNC7 (int,struct buffer_head*) ; 
 scalar_t__ FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 

int FUNC11(struct buffer_head *bh, int rw)
{
	int ret = 0;

	FUNC0(FUNC1(&bh->b_count) < 1);
	FUNC6(bh);
	if (FUNC8(bh)) {
		FUNC5(bh);
		bh->b_end_io = end_buffer_write_sync;
		ret = FUNC7(rw, bh);
		FUNC10(bh);
		if (FUNC2(bh)) {
			FUNC4(bh);
			ret = -EOPNOTSUPP;
		}
		if (!ret && !FUNC3(bh))
			ret = -EIO;
	} else {
		FUNC9(bh);
	}
	return ret;
}