
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_blocksize; } ;
struct msdos_sb_info {int cluster_size; unsigned long cluster_bits; scalar_t__ sec_per_clus; } ;
struct msdos_dir_entry {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef scalar_t__ sector_t ;
typedef int loff_t ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int MAX_BUF_PER_PAGE ;
 struct msdos_sb_info* MSDOS_SB (struct super_block*) ;
 int bforget (struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 int fat_alloc_clusters (struct inode*,int*,int) ;
 scalar_t__ fat_clus_to_blknr (struct msdos_sb_info*,int) ;
 int fat_free_clusters (struct inode*,int) ;
 int fat_make_i_pos (struct super_block*,struct buffer_head*,struct msdos_dir_entry*) ;
 int fat_zeroed_cluster (struct inode*,scalar_t__,int,struct buffer_head**,int) ;
 int get_bh (struct buffer_head*) ;
 int mark_buffer_dirty_inode (struct buffer_head*,struct inode*) ;
 int memcpy (scalar_t__,void*,unsigned long) ;
 int memset (scalar_t__,int ,scalar_t__) ;
 unsigned long min (unsigned long,scalar_t__) ;
 struct buffer_head* sb_getblk (struct super_block*,scalar_t__) ;
 int set_buffer_uptodate (struct buffer_head*) ;

__attribute__((used)) static int fat_add_new_entries(struct inode *dir, void *slots, int nr_slots,
          int *nr_cluster, struct msdos_dir_entry **de,
          struct buffer_head **bh, loff_t *i_pos)
{
 struct super_block *sb = dir->i_sb;
 struct msdos_sb_info *sbi = MSDOS_SB(sb);
 struct buffer_head *bhs[MAX_BUF_PER_PAGE];
 sector_t blknr, start_blknr, last_blknr;
 unsigned long size, copy;
 int err, i, n, offset, cluster[2];






 size = nr_slots * sizeof(struct msdos_dir_entry);
 *nr_cluster = (size + (sbi->cluster_size - 1)) >> sbi->cluster_bits;
 BUG_ON(*nr_cluster > 2);

 err = fat_alloc_clusters(dir, cluster, *nr_cluster);
 if (err)
  goto error;






 i = n = copy = 0;
 do {
  start_blknr = blknr = fat_clus_to_blknr(sbi, cluster[i]);
  last_blknr = start_blknr + sbi->sec_per_clus;
  while (blknr < last_blknr) {
   bhs[n] = sb_getblk(sb, blknr);
   if (!bhs[n]) {
    err = -ENOMEM;
    goto error_nomem;
   }


   copy = min(size, sb->s_blocksize);
   memcpy(bhs[n]->b_data, slots, copy);
   slots += copy;
   size -= copy;
   set_buffer_uptodate(bhs[n]);
   mark_buffer_dirty_inode(bhs[n], dir);
   if (!size)
    break;
   n++;
   blknr++;
  }
 } while (++i < *nr_cluster);

 memset(bhs[n]->b_data + copy, 0, sb->s_blocksize - copy);
 offset = copy - sizeof(struct msdos_dir_entry);
 get_bh(bhs[n]);
 *bh = bhs[n];
 *de = (struct msdos_dir_entry *)((*bh)->b_data + offset);
 *i_pos = fat_make_i_pos(sb, *bh, *de);


 err = fat_zeroed_cluster(dir, start_blknr, ++n, bhs, MAX_BUF_PER_PAGE);
 if (err)
  goto error_free;

 return cluster[0];

error_free:
 brelse(*bh);
 *bh = ((void*)0);
 n = 0;
error_nomem:
 for (i = 0; i < n; i++)
  bforget(bhs[i]);
 fat_free_clusters(dir, cluster[0]);
error:
 return err;
}
