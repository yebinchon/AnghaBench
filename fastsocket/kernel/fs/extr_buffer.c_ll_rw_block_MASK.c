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
 int SWRITE ; 
 int SWRITE_SYNC ; 
 int SWRITE_SYNC_PLUG ; 
 int WRITE ; 
 int WRITE_SYNC ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_buffer_read_sync ; 
 int /*<<< orphan*/  end_buffer_write_sync ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 

void FUNC7(int rw, int nr, struct buffer_head *bhs[])
{
	int i;

	for (i = 0; i < nr; i++) {
		struct buffer_head *bh = bhs[i];

		if (rw == SWRITE || rw == SWRITE_SYNC || rw == SWRITE_SYNC_PLUG)
			FUNC2(bh);
		else if (!FUNC5(bh))
			continue;

		if (rw == WRITE || rw == SWRITE || rw == SWRITE_SYNC ||
		    rw == SWRITE_SYNC_PLUG) {
			if (FUNC4(bh)) {
				bh->b_end_io = end_buffer_write_sync;
				FUNC1(bh);
				if (rw == SWRITE_SYNC)
					FUNC3(WRITE_SYNC, bh);
				else
					FUNC3(WRITE, bh);
				continue;
			}
		} else {
			if (!FUNC0(bh)) {
				bh->b_end_io = end_buffer_read_sync;
				FUNC1(bh);
				FUNC3(rw, bh);
				continue;
			}
		}
		FUNC6(bh);
	}
}