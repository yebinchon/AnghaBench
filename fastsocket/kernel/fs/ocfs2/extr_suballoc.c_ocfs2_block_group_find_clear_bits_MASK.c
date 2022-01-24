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
typedef  int u16 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_group_desc {void* bg_bitmap; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_group_desc*) ; 
 int FUNC2 (void*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*,int) ; 

__attribute__((used)) static int FUNC4(struct ocfs2_super *osb,
					     struct buffer_head *bg_bh,
					     unsigned int bits_wanted,
					     unsigned int total_bits,
					     u16 *bit_off,
					     u16 *bits_found)
{
	void *bitmap;
	u16 best_offset, best_size;
	int offset, start, found, status = 0;
	struct ocfs2_group_desc *bg = (struct ocfs2_group_desc *) bg_bh->b_data;

	/* Callers got this descriptor from
	 * ocfs2_read_group_descriptor().  Any corruption is a code bug. */
	FUNC0(!FUNC1(bg));

	found = start = best_offset = best_size = 0;
	bitmap = bg->bg_bitmap;

	while((offset = FUNC2(bitmap, total_bits, start)) != -1) {
		if (offset == total_bits)
			break;

		if (!FUNC3(bg_bh, offset)) {
			/* We found a zero, but we can't use it as it
			 * hasn't been put to disk yet! */
			found = 0;
			start = offset + 1;
		} else if (offset == start) {
			/* we found a zero */
			found++;
			/* move start to the next bit to test */
			start++;
		} else {
			/* got a zero after some ones */
			found = 1;
			start = offset + 1;
		}
		if (found > best_size) {
			best_size = found;
			best_offset = start - found;
		}
		/* we got everything we needed */
		if (found == bits_wanted) {
			/* mlog(0, "Found it all!\n"); */
			break;
		}
	}

	/* XXX: I think the first clause is equivalent to the second
	 * 	- jlbec */
	if (found == bits_wanted) {
		*bit_off = start - found;
		*bits_found = found;
	} else if (best_size) {
		*bit_off = best_offset;
		*bits_found = best_size;
	} else {
		status = -ENOSPC;
		/* No error log here -- see the comment above
		 * ocfs2_test_bg_bit_allocatable */
	}

	return status;
}