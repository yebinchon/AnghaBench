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
struct super_block {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (unsigned long,unsigned long,struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,unsigned long,...) ; 

__attribute__((used)) static int FUNC2(struct super_block *sb, unsigned long start,
				unsigned long end, unsigned long where)
{
	unsigned long i;

	FUNC1("%08lx-%08lx->%08lx\n", start, end, where);
	for (i = start; i <= end; i++)
		if(FUNC0(i, where + i, sb)) {
			FUNC1("failed to move block %08lx -> %08lx\n", i,
								where + i);
			return -EIO;
		}
	return 0;
}