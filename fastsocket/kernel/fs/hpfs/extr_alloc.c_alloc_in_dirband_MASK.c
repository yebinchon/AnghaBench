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
struct hpfs_sb_info {unsigned int sb_dirband_start; unsigned int sb_dirband_size; } ;
typedef  int secno ;

/* Variables and functions */
 int FUNC0 (struct super_block*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 struct hpfs_sb_info* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 

__attribute__((used)) static secno FUNC4(struct super_block *s, secno near, int lock)
{
	unsigned nr = near;
	secno sec;
	struct hpfs_sb_info *sbi = FUNC2(s);
	if (nr < sbi->sb_dirband_start)
		nr = sbi->sb_dirband_start;
	if (nr >= sbi->sb_dirband_start + sbi->sb_dirband_size)
		nr = sbi->sb_dirband_start + sbi->sb_dirband_size - 4;
	nr -= sbi->sb_dirband_start;
	nr >>= 2;
	if (lock) FUNC1(s);
	sec = FUNC0(s, (~0x3fff) | nr, 1, 0);
	if (lock) FUNC3(s);
	if (!sec) return 0;
	return ((sec & 0x3fff) << 2) + sbi->sb_dirband_start;
}