
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct super_block {int s_blocksize; int s_blocksize_bits; } ;
struct ocfs2_dir_entry {size_t file_type; int rec_len; int inode; int name_len; int name; } ;
struct inode {unsigned long i_version; struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int loff_t ;
typedef int (* filldir_t ) (void*,int ,int ,int,scalar_t__,unsigned char) ;


 unsigned char DT_UNKNOWN ;
 int OCFS2_BH_READAHEAD ;
 scalar_t__ OCFS2_DIR_REC_LEN (int) ;
 size_t OCFS2_FT_MAX ;
 int brelse (struct buffer_head*) ;
 int i_size_read (struct inode*) ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int ocfs2_check_dir_entry (struct inode*,struct ocfs2_dir_entry*,struct buffer_head*,unsigned long) ;
 unsigned char* ocfs2_filetype_table ;
 scalar_t__ ocfs2_read_dir_block (struct inode*,unsigned long,struct buffer_head**,int ) ;

__attribute__((used)) static int ocfs2_dir_foreach_blk_el(struct inode *inode,
        u64 *f_version,
        loff_t *f_pos, void *priv,
        filldir_t filldir, int *filldir_err)
{
 int error = 0;
 unsigned long offset, blk, last_ra_blk = 0;
 int i, stored;
 struct buffer_head * bh, * tmp;
 struct ocfs2_dir_entry * de;
 struct super_block * sb = inode->i_sb;
 unsigned int ra_sectors = 16;

 stored = 0;
 bh = ((void*)0);

 offset = (*f_pos) & (sb->s_blocksize - 1);

 while (!error && !stored && *f_pos < i_size_read(inode)) {
  blk = (*f_pos) >> sb->s_blocksize_bits;
  if (ocfs2_read_dir_block(inode, blk, &bh, 0)) {

   *f_pos += sb->s_blocksize - offset;
   continue;
  }






  if (!last_ra_blk
      || (((last_ra_blk - blk) << 9) <= (ra_sectors / 2))) {
   for (i = ra_sectors >> (sb->s_blocksize_bits - 9);
        i > 0; i--) {
    tmp = ((void*)0);
    if (!ocfs2_read_dir_block(inode, ++blk, &tmp,
         OCFS2_BH_READAHEAD))
     brelse(tmp);
   }
   last_ra_blk = blk;
   ra_sectors = 8;
  }

revalidate:




  if (*f_version != inode->i_version) {
   for (i = 0; i < sb->s_blocksize && i < offset; ) {
    de = (struct ocfs2_dir_entry *) (bh->b_data + i);






    if (le16_to_cpu(de->rec_len) <
        OCFS2_DIR_REC_LEN(1))
     break;
    i += le16_to_cpu(de->rec_len);
   }
   offset = i;
   *f_pos = ((*f_pos) & ~(sb->s_blocksize - 1))
    | offset;
   *f_version = inode->i_version;
  }

  while (!error && *f_pos < i_size_read(inode)
         && offset < sb->s_blocksize) {
   de = (struct ocfs2_dir_entry *) (bh->b_data + offset);
   if (!ocfs2_check_dir_entry(inode, de, bh, offset)) {


    *f_pos = ((*f_pos) | (sb->s_blocksize - 1)) + 1;
    brelse(bh);
    goto out;
   }
   offset += le16_to_cpu(de->rec_len);
   if (le64_to_cpu(de->inode)) {







    unsigned long version = *f_version;
    unsigned char d_type = DT_UNKNOWN;

    if (de->file_type < OCFS2_FT_MAX)
     d_type = ocfs2_filetype_table[de->file_type];
    error = filldir(priv, de->name,
      de->name_len,
      *f_pos,
      le64_to_cpu(de->inode),
      d_type);
    if (error) {
     if (filldir_err)
      *filldir_err = error;
     break;
    }
    if (version != *f_version)
     goto revalidate;
    stored ++;
   }
   *f_pos += le16_to_cpu(de->rec_len);
  }
  offset = 0;
  brelse(bh);
  bh = ((void*)0);
 }

 stored = 0;
out:
 return stored;
}
