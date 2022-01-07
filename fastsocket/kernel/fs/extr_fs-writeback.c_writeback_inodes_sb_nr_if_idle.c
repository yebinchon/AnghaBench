
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_umount; int s_bdi; } ;


 int down_read (int *) ;
 int up_read (int *) ;
 int writeback_in_progress (int ) ;
 int writeback_inodes_sb_nr (struct super_block*,unsigned long) ;

int writeback_inodes_sb_nr_if_idle(struct super_block *sb,
       unsigned long nr)
{
 if (!writeback_in_progress(sb->s_bdi)) {
  down_read(&sb->s_umount);
  writeback_inodes_sb_nr(sb, nr);
  up_read(&sb->s_umount);
  return 1;
 } else
  return 0;
}
