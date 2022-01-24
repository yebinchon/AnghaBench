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
struct inode {int dummy; } ;

/* Variables and functions */
 unsigned long BITS_PER_LONG ; 
 int ENOSPC ; 
 int FUNC0 (unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,unsigned char*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode,
					    unsigned long group,
					    unsigned long target,
					    unsigned char *bitmap,
					    int bsize)  /* size in bits */
{
	int curr, pos, end, i;

	if (target > 0) {
		end = (target + BITS_PER_LONG - 1) & ~(BITS_PER_LONG - 1);
		if (end > bsize)
			end = bsize;
		pos = FUNC0(bitmap, end, target);
		if (pos < end &&
		    !FUNC2(
			    FUNC1(inode, group), pos, bitmap))
			return pos;
	} else
		end = 0;

	for (i = 0, curr = end;
	     i < bsize;
	     i += BITS_PER_LONG, curr += BITS_PER_LONG) {
		/* wrap around */
		if (curr >= bsize)
			curr = 0;
		while (*((unsigned long *)bitmap + curr / BITS_PER_LONG)
		       != ~0UL) {
			end = curr + BITS_PER_LONG;
			if (end > bsize)
				end = bsize;
			pos = FUNC0(bitmap, end, curr);
			if ((pos < end) &&
			    !FUNC2(
				    FUNC1(inode, group), pos,
				    bitmap))
				return pos;
		}
	}
	return -ENOSPC;
}