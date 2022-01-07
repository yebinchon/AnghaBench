
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize_bits; } ;
struct minix_sb_info {unsigned long s_ninodes; unsigned long s_imap_blocks; struct buffer_head** s_imap; } ;
struct inode {unsigned long i_ino; struct super_block* i_sb; } ;
struct buffer_head {int b_data; } ;


 int bitmap_lock ;
 int clear_inode (struct inode*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int minix_clear_inode (struct inode*) ;
 struct minix_sb_info* minix_sb (struct super_block*) ;
 int minix_test_and_clear_bit (unsigned long,int ) ;
 int printk (char*,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void minix_free_inode(struct inode * inode)
{
 struct super_block *sb = inode->i_sb;
 struct minix_sb_info *sbi = minix_sb(inode->i_sb);
 struct buffer_head *bh;
 int k = sb->s_blocksize_bits + 3;
 unsigned long ino, bit;

 ino = inode->i_ino;
 if (ino < 1 || ino > sbi->s_ninodes) {
  printk("minix_free_inode: inode 0 or nonexistent inode\n");
  goto out;
 }
 bit = ino & ((1<<k) - 1);
 ino >>= k;
 if (ino >= sbi->s_imap_blocks) {
  printk("minix_free_inode: nonexistent imap in superblock\n");
  goto out;
 }

 minix_clear_inode(inode);

 bh = sbi->s_imap[ino];
 spin_lock(&bitmap_lock);
 if (!minix_test_and_clear_bit(bit, bh->b_data))
  printk("minix_free_inode: bit %lu already cleared\n", bit);
 spin_unlock(&bitmap_lock);
 mark_buffer_dirty(bh);
 out:
 clear_inode(inode);
}
