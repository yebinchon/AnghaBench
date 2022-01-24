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
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct buffer_head*) ; 

__attribute__((used)) static int FUNC6(handle_t *handle,
				       struct buffer_head *bh)
{
	int dirty = FUNC0(bh);
	int ret;

	if (!FUNC2(bh) || FUNC1(bh))
		return 0;
	/*
	 * __block_prepare_write() could have dirtied some buffers. Clean
	 * the dirty bit as jbd2_journal_get_write_access() could complain
	 * otherwise about fs integrity issues. Setting of the dirty bit
	 * by __block_prepare_write() isn't a real problem here as we clear
	 * the bit before releasing a page lock and thus writeback cannot
	 * ever write the buffer.
	 */
	if (dirty)
		FUNC3(bh);
	ret = FUNC5(handle, bh);
	if (!ret && dirty)
		ret = FUNC4(handle, NULL, bh);
	return ret;
}