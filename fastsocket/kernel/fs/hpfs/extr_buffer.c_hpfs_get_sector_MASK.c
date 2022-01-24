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
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct buffer_head* FUNC3 (struct super_block*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 

void *FUNC6(struct super_block *s, unsigned secno, struct buffer_head **bhp)
{
	struct buffer_head *bh;
	/*return hpfs_map_sector(s, secno, bhp, 0);*/

	FUNC1();

	if ((*bhp = bh = FUNC3(s, secno)) != NULL) {
		if (!FUNC0(bh)) FUNC5(bh);
		FUNC4(bh);
		return bh->b_data;
	} else {
		FUNC2("HPFS: hpfs_get_sector: getblk failed\n");
		return NULL;
	}
}