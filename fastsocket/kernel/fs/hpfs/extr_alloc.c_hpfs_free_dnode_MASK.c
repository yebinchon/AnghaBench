#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
typedef  int dnode_secno ;
struct TYPE_2__ {int sb_dirband_start; int sb_dirband_size; scalar_t__ sb_chk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int,int) ; 
 unsigned int* FUNC3 (struct super_block*,struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct quad_buffer_head*) ; 
 TYPE_1__* FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*) ; 

void FUNC8(struct super_block *s, dnode_secno dno)
{
	if (FUNC5(s)->sb_chk) if (dno & 3) {
		FUNC1(s, "hpfs_free_dnode: dnode %08x not aligned", dno);
		return;
	}
	if (dno < FUNC5(s)->sb_dirband_start ||
	    dno >= FUNC5(s)->sb_dirband_start + FUNC5(s)->sb_dirband_size) {
		FUNC2(s, dno, 4);
	} else {
		struct quad_buffer_head qbh;
		unsigned *bmp;
		unsigned ssec = (dno - FUNC5(s)->sb_dirband_start) / 4;
		FUNC6(s);
		if (!(bmp = FUNC3(s, &qbh))) {
			FUNC7(s);
			return;
		}
		bmp[ssec >> 5] |= 1 << (ssec & 0x1f);
		FUNC4(&qbh);
		FUNC0(&qbh);
		FUNC7(s);
	}
}