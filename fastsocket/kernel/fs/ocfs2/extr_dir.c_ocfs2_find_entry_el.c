
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_blocksize_bits; int s_blocksize; } ;
struct ocfs2_dir_entry {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {int b_data; } ;
struct TYPE_2__ {unsigned long ip_dir_start_lookup; scalar_t__ ip_blkno; } ;


 int NAMEI_RA_SIZE ;
 int OCFS2_BH_READAHEAD ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int i_size_read (struct inode*) ;
 int mlog_entry_void () ;
 int mlog_exit_ptr (struct buffer_head*) ;
 int ocfs2_error (struct super_block*,char*,unsigned long long,unsigned long) ;
 int ocfs2_read_dir_block (struct inode*,unsigned long,struct buffer_head**,int ) ;
 int ocfs2_search_dirblock (struct buffer_head*,struct inode*,char const*,int,unsigned long,int ,int ,struct ocfs2_dir_entry**) ;

__attribute__((used)) static struct buffer_head *ocfs2_find_entry_el(const char *name, int namelen,
            struct inode *dir,
            struct ocfs2_dir_entry **res_dir)
{
 struct super_block *sb;
 struct buffer_head *bh_use[NAMEI_RA_SIZE];
 struct buffer_head *bh, *ret = ((void*)0);
 unsigned long start, block, b;
 int ra_max = 0;

 int ra_ptr = 0;

 int num = 0;
 int nblocks, i, err;

 mlog_entry_void();

 sb = dir->i_sb;

 nblocks = i_size_read(dir) >> sb->s_blocksize_bits;
 start = OCFS2_I(dir)->ip_dir_start_lookup;
 if (start >= nblocks)
  start = 0;
 block = start;

restart:
 do {



  if (ra_ptr >= ra_max) {

   ra_ptr = 0;
   b = block;
   for (ra_max = 0; ra_max < NAMEI_RA_SIZE; ra_max++) {





    if (b >= nblocks || (num && block == start)) {
     bh_use[ra_max] = ((void*)0);
     break;
    }
    num++;

    bh = ((void*)0);
    err = ocfs2_read_dir_block(dir, b++, &bh,
          OCFS2_BH_READAHEAD);
    bh_use[ra_max] = bh;
   }
  }
  if ((bh = bh_use[ra_ptr++]) == ((void*)0))
   goto next;
  if (ocfs2_read_dir_block(dir, block, &bh, 0)) {


   ocfs2_error(dir->i_sb, "reading directory %llu, "
        "offset %lu\n",
        (unsigned long long)OCFS2_I(dir)->ip_blkno,
        block);
   goto next;
  }
  i = ocfs2_search_dirblock(bh, dir, name, namelen,
       block << sb->s_blocksize_bits,
       bh->b_data, sb->s_blocksize,
       res_dir);
  if (i == 1) {
   OCFS2_I(dir)->ip_dir_start_lookup = block;
   ret = bh;
   goto cleanup_and_exit;
  } else {
   brelse(bh);
   if (i < 0)
    goto cleanup_and_exit;
  }
 next:
  if (++block >= nblocks)
   block = 0;
 } while (block != start);





 block = nblocks;
 nblocks = i_size_read(dir) >> sb->s_blocksize_bits;
 if (block < nblocks) {
  start = 0;
  goto restart;
 }

cleanup_and_exit:

 for (; ra_ptr < ra_max; ra_ptr++)
  brelse(bh_use[ra_ptr]);

 mlog_exit_ptr(ret);
 return ret;
}
