
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysv_sb_info {int s_ninodes; int s_inodes_per_block_1; int * s_sb_total_free_inodes; } ;
struct sysv_inode {scalar_t__ i_mode; scalar_t__ i_nlink; } ;
struct super_block {int s_flags; } ;
struct buffer_head {int dummy; } ;


 int MS_RDONLY ;
 int SYSV_ROOT_INO ;
 struct sysv_sb_info* SYSV_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_fs16 (struct sysv_sb_info*,int) ;
 int dirty_sb (struct super_block*) ;
 int fs16_to_cpu (struct sysv_sb_info*,int ) ;
 int lock_super (struct super_block*) ;
 int printk (char*,...) ;
 struct sysv_inode* sysv_raw_inode (struct super_block*,int,struct buffer_head**) ;
 int unlock_super (struct super_block*) ;

unsigned long sysv_count_free_inodes(struct super_block * sb)
{
 struct sysv_sb_info *sbi = SYSV_SB(sb);
 struct buffer_head * bh;
 struct sysv_inode * raw_inode;
 int ino, count, sb_count;

 lock_super(sb);

 sb_count = fs16_to_cpu(sbi, *sbi->s_sb_total_free_inodes);

 if (0)
  goto trust_sb;


 count = 0;
 ino = SYSV_ROOT_INO+1;
 raw_inode = sysv_raw_inode(sb, ino, &bh);
 if (!raw_inode)
  goto Eio;
 while (ino <= sbi->s_ninodes) {
  if (raw_inode->i_mode == 0 && raw_inode->i_nlink == 0)
   count++;
  if ((ino++ & sbi->s_inodes_per_block_1) == 0) {
   brelse(bh);
   raw_inode = sysv_raw_inode(sb, ino, &bh);
   if (!raw_inode)
    goto Eio;
  } else
   raw_inode++;
 }
 brelse(bh);
 if (count != sb_count)
  goto Einval;
out:
 unlock_super(sb);
 return count;

Einval:
 printk("sysv_count_free_inodes: "
  "free inode count was %d, correcting to %d\n",
  sb_count, count);
 if (!(sb->s_flags & MS_RDONLY)) {
  *sbi->s_sb_total_free_inodes = cpu_to_fs16(SYSV_SB(sb), count);
  dirty_sb(sb);
 }
 goto out;

Eio:
 printk("sysv_count_free_inodes: unable to read inode table\n");
trust_sb:
 count = sb_count;
 goto out;
}
