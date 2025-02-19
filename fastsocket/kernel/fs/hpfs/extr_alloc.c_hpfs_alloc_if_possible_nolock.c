
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
typedef int secno ;


 int hpfs_brelse4 (struct quad_buffer_head*) ;
 unsigned int* hpfs_map_bitmap (struct super_block*,int,struct quad_buffer_head*,char*) ;
 int hpfs_mark_4buffers_dirty (struct quad_buffer_head*) ;
 int lock_super (struct super_block*) ;
 int unlock_super (struct super_block*) ;

__attribute__((used)) static int hpfs_alloc_if_possible_nolock(struct super_block *s, secno sec)
{
 struct quad_buffer_head qbh;
 unsigned *bmp;
 lock_super(s);
 if (!(bmp = hpfs_map_bitmap(s, sec >> 14, &qbh, "aip"))) goto end;
 if (bmp[(sec & 0x3fff) >> 5] & (1 << (sec & 0x1f))) {
  bmp[(sec & 0x3fff) >> 5] &= ~(1 << (sec & 0x1f));
  hpfs_mark_4buffers_dirty(&qbh);
  hpfs_brelse4(&qbh);
  unlock_super(s);
  return 1;
 }
 hpfs_brelse4(&qbh);
 end:
 unlock_super(s);
 return 0;
}
