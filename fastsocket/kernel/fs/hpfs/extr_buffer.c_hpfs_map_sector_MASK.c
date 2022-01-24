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
struct buffer_head {void* b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct buffer_head* FUNC2 (struct super_block*,unsigned int) ; 

void *FUNC3(struct super_block *s, unsigned secno, struct buffer_head **bhp,
		 int ahead)
{
	struct buffer_head *bh;

	FUNC0();

	*bhp = bh = FUNC2(s, secno);
	if (bh != NULL)
		return bh->b_data;
	else {
		FUNC1("HPFS: hpfs_map_sector: read error\n");
		return NULL;
	}
}