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
struct hpfs_sb_info {int sb_fs_size; int sb_max_fwd_alloc; int sb_c_bitmap; } ;
typedef  int secno ;

/* Variables and functions */
 int FUNC0 (struct super_block*,int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 struct hpfs_sb_info* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 

secno FUNC6(struct super_block *s, secno near, unsigned n, int forward, int lock)
{
	secno sec;
	int i;
	unsigned n_bmps;
	struct hpfs_sb_info *sbi = FUNC4(s);
	int f_p = 0;
	int near_bmp;
	if (forward < 0) {
		forward = -forward;
		f_p = 1;
	}
	if (lock) FUNC3(s);
	n_bmps = (sbi->sb_fs_size + 0x4000 - 1) >> 14;
	if (near && near < sbi->sb_fs_size) {
		if ((sec = FUNC0(s, near, n, f_p ? forward : forward/4))) goto ret;
		near_bmp = near >> 14;
	} else near_bmp = n_bmps / 2;
	/*
	if (b != -1) {
		if ((sec = alloc_in_bmp(s, b<<14, n, f_p ? forward : forward/2))) {
			b &= 0x0fffffff;
			goto ret;
		}
		if (b > 0x10000000) if ((sec = alloc_in_bmp(s, (b&0xfffffff)<<14, n, f_p ? forward : 0))) goto ret;
	*/
	if (!f_p) if (forward > sbi->sb_max_fwd_alloc) forward = sbi->sb_max_fwd_alloc;
	less_fwd:
	for (i = 0; i < n_bmps; i++) {
		if (near_bmp+i < n_bmps && ((sec = FUNC0(s, (near_bmp+i) << 14, n, forward)))) {
			sbi->sb_c_bitmap = near_bmp+i;
			goto ret;
		}	
		if (!forward) {
			if (near_bmp-i-1 >= 0 && ((sec = FUNC0(s, (near_bmp-i-1) << 14, n, forward)))) {
				sbi->sb_c_bitmap = near_bmp-i-1;
				goto ret;
			}
		} else {
			if (near_bmp+i >= n_bmps && ((sec = FUNC0(s, (near_bmp+i-n_bmps) << 14, n, forward)))) {
				sbi->sb_c_bitmap = near_bmp+i-n_bmps;
				goto ret;
			}
		}
		if (i == 1 && sbi->sb_c_bitmap != -1 && ((sec = FUNC0(s, (sbi->sb_c_bitmap) << 14, n, forward)))) {
			goto ret;
		}
	}
	if (!f_p) {
		if (forward) {
			sbi->sb_max_fwd_alloc = forward * 3 / 4;
			forward /= 2;
			goto less_fwd;
		}
	}
	sec = 0;
	ret:
	if (sec && f_p) {
		for (i = 0; i < forward; i++) {
			if (!FUNC1(s, sec + i + 1)) {
				FUNC2(s, "Prealloc doesn't work! Wanted %d, allocated at %08x, can't allocate %d", forward, sec, i);
				sec = 0;
				break;
			}
		}
	}
	if (lock) FUNC5(s);
	return sec;
}