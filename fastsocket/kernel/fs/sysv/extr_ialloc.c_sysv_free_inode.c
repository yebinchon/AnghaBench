
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysv_sb_info {unsigned int s_ninodes; unsigned int s_fic_size; int s_sb_total_free_inodes; void** s_sb_fic_count; } ;
struct sysv_inode {int dummy; } ;
struct super_block {int s_id; } ;
struct inode {unsigned int i_ino; struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;


 unsigned int SYSV_ROOT_INO ;
 struct sysv_sb_info* SYSV_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 int clear_inode (struct inode*) ;
 void* cpu_to_fs16 (struct sysv_sb_info*,unsigned int) ;
 int dirty_sb (struct super_block*) ;
 int fs16_add (struct sysv_sb_info*,int ,int) ;
 unsigned int fs16_to_cpu (struct sysv_sb_info*,void*) ;
 int lock_super (struct super_block*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int memset (struct sysv_inode*,int ,int) ;
 int printk (char*,...) ;
 void** sv_sb_fic_inode (struct super_block*,int ) ;
 struct sysv_inode* sysv_raw_inode (struct super_block*,unsigned int,struct buffer_head**) ;
 int unlock_super (struct super_block*) ;

void sysv_free_inode(struct inode * inode)
{
 struct super_block *sb = inode->i_sb;
 struct sysv_sb_info *sbi = SYSV_SB(sb);
 unsigned int ino;
 struct buffer_head * bh;
 struct sysv_inode * raw_inode;
 unsigned count;

 sb = inode->i_sb;
 ino = inode->i_ino;
 if (ino <= SYSV_ROOT_INO || ino > sbi->s_ninodes) {
  printk("sysv_free_inode: inode 0,1,2 or nonexistent inode\n");
  return;
 }
 raw_inode = sysv_raw_inode(sb, ino, &bh);
 clear_inode(inode);
 if (!raw_inode) {
  printk("sysv_free_inode: unable to read inode block on device "
         "%s\n", inode->i_sb->s_id);
  return;
 }
 lock_super(sb);
 count = fs16_to_cpu(sbi, *sbi->s_sb_fic_count);
 if (count < sbi->s_fic_size) {
  *sv_sb_fic_inode(sb,count++) = cpu_to_fs16(sbi, ino);
  *sbi->s_sb_fic_count = cpu_to_fs16(sbi, count);
 }
 fs16_add(sbi, sbi->s_sb_total_free_inodes, 1);
 dirty_sb(sb);
 memset(raw_inode, 0, sizeof(struct sysv_inode));
 mark_buffer_dirty(bh);
 unlock_super(sb);
 brelse(bh);
}
