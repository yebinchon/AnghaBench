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
typedef  int secno ;
struct TYPE_2__ {unsigned int sb_fs_size; int* sb_bmp_dir; scalar_t__ sb_chk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*,char*,unsigned int,...) ; 
 unsigned int* FUNC1 (struct super_block*,int,struct quad_buffer_head*,int) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 

unsigned int *FUNC3(struct super_block *s, unsigned bmp_block,
			 struct quad_buffer_head *qbh, char *id)
{
	secno sec;
	if (FUNC2(s)->sb_chk) if (bmp_block * 16384 > FUNC2(s)->sb_fs_size) {
		FUNC0(s, "hpfs_map_bitmap called with bad parameter: %08x at %s", bmp_block, id);
		return NULL;
	}
	sec = FUNC2(s)->sb_bmp_dir[bmp_block];
	if (!sec || sec > FUNC2(s)->sb_fs_size-4) {
		FUNC0(s, "invalid bitmap block pointer %08x -> %08x at %s", bmp_block, sec, id);
		return NULL;
	}
	return FUNC1(s, sec, qbh, 4);
}