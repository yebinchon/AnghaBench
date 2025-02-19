
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
struct hpfs_sb_info {int sb_max_fwd_alloc; } ;
typedef int secno ;


 int hpfs_brelse4 (struct quad_buffer_head*) ;
 int hpfs_error (struct super_block*,char*,int) ;
 unsigned int* hpfs_map_bitmap (struct super_block*,int,struct quad_buffer_head*,char*) ;
 int hpfs_mark_4buffers_dirty (struct quad_buffer_head*) ;
 struct hpfs_sb_info* hpfs_sb (struct super_block*) ;
 int lock_super (struct super_block*) ;
 int unlock_super (struct super_block*) ;

void hpfs_free_sectors(struct super_block *s, secno sec, unsigned n)
{
 struct quad_buffer_head qbh;
 unsigned *bmp;
 struct hpfs_sb_info *sbi = hpfs_sb(s);

 if (!n) return;
 if (sec < 0x12) {
  hpfs_error(s, "Trying to free reserved sector %08x", sec);
  return;
 }
 lock_super(s);
 sbi->sb_max_fwd_alloc += n > 0xffff ? 0xffff : n;
 if (sbi->sb_max_fwd_alloc > 0xffffff) sbi->sb_max_fwd_alloc = 0xffffff;
 new_map:
 if (!(bmp = hpfs_map_bitmap(s, sec >> 14, &qbh, "free"))) {
  unlock_super(s);
  return;
 }
 new_tst:
 if ((bmp[(sec & 0x3fff) >> 5] >> (sec & 0x1f) & 1)) {
  hpfs_error(s, "sector %08x not allocated", sec);
  hpfs_brelse4(&qbh);
  unlock_super(s);
  return;
 }
 bmp[(sec & 0x3fff) >> 5] |= 1 << (sec & 0x1f);
 if (!--n) {
  hpfs_mark_4buffers_dirty(&qbh);
  hpfs_brelse4(&qbh);
  unlock_super(s);
  return;
 }
 if (!(++sec & 0x3fff)) {
  hpfs_mark_4buffers_dirty(&qbh);
  hpfs_brelse4(&qbh);
  goto new_map;
 }
 goto new_tst;
}
