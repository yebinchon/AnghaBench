
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct hpfs_sb_info {int sb_fs_size; int sb_max_fwd_alloc; int sb_c_bitmap; } ;
typedef int secno ;


 int alloc_in_bmp (struct super_block*,int,unsigned int,int) ;
 int hpfs_alloc_if_possible_nolock (struct super_block*,int) ;
 int hpfs_error (struct super_block*,char*,int,int,int) ;
 int hpfs_lock_creation (struct super_block*) ;
 struct hpfs_sb_info* hpfs_sb (struct super_block*) ;
 int hpfs_unlock_creation (struct super_block*) ;

secno hpfs_alloc_sector(struct super_block *s, secno near, unsigned n, int forward, int lock)
{
 secno sec;
 int i;
 unsigned n_bmps;
 struct hpfs_sb_info *sbi = hpfs_sb(s);
 int f_p = 0;
 int near_bmp;
 if (forward < 0) {
  forward = -forward;
  f_p = 1;
 }
 if (lock) hpfs_lock_creation(s);
 n_bmps = (sbi->sb_fs_size + 0x4000 - 1) >> 14;
 if (near && near < sbi->sb_fs_size) {
  if ((sec = alloc_in_bmp(s, near, n, f_p ? forward : forward/4))) goto ret;
  near_bmp = near >> 14;
 } else near_bmp = n_bmps / 2;
 if (!f_p) if (forward > sbi->sb_max_fwd_alloc) forward = sbi->sb_max_fwd_alloc;
 less_fwd:
 for (i = 0; i < n_bmps; i++) {
  if (near_bmp+i < n_bmps && ((sec = alloc_in_bmp(s, (near_bmp+i) << 14, n, forward)))) {
   sbi->sb_c_bitmap = near_bmp+i;
   goto ret;
  }
  if (!forward) {
   if (near_bmp-i-1 >= 0 && ((sec = alloc_in_bmp(s, (near_bmp-i-1) << 14, n, forward)))) {
    sbi->sb_c_bitmap = near_bmp-i-1;
    goto ret;
   }
  } else {
   if (near_bmp+i >= n_bmps && ((sec = alloc_in_bmp(s, (near_bmp+i-n_bmps) << 14, n, forward)))) {
    sbi->sb_c_bitmap = near_bmp+i-n_bmps;
    goto ret;
   }
  }
  if (i == 1 && sbi->sb_c_bitmap != -1 && ((sec = alloc_in_bmp(s, (sbi->sb_c_bitmap) << 14, n, forward)))) {
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
   if (!hpfs_alloc_if_possible_nolock(s, sec + i + 1)) {
    hpfs_error(s, "Prealloc doesn't work! Wanted %d, allocated at %08x, can't allocate %d", forward, sec, i);
    sec = 0;
    break;
   }
  }
 }
 if (lock) hpfs_unlock_creation(s);
 return sec;
}
