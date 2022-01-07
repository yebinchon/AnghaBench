
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_blkbits; scalar_t__ i_size; } ;
struct gfs2_inode {int i_gl; } ;
struct buffer_head {unsigned int b_size; int b_blocknr; int b_state; } ;
typedef unsigned int sector_t ;
typedef scalar_t__ loff_t ;


 int EIO ;
 int FALLOC_FL_KEEP_SIZE ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int buffer_new (struct buffer_head*) ;
 int buffer_zeronew (struct buffer_head*) ;
 int gfs2_block_map (struct inode*,unsigned int,struct buffer_head*,int) ;
 scalar_t__ gfs2_is_stuffed (struct gfs2_inode*) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;
 int gfs2_unstuff_dinode (struct gfs2_inode*,int *) ;
 int i_size_write (struct inode*,scalar_t__) ;
 int mark_inode_dirty (struct inode*) ;
 int set_buffer_zeronew (struct buffer_head*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int fallocate_chunk(struct inode *inode, loff_t offset, loff_t len,
      int mode)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 struct buffer_head *dibh;
 int error;
 unsigned int nr_blks;
 loff_t size = len;
 sector_t lblock = offset >> inode->i_blkbits;

 error = gfs2_meta_inode_buffer(ip, &dibh);
 if (unlikely(error))
  return error;

 gfs2_trans_add_meta(ip->i_gl, dibh);

 if (gfs2_is_stuffed(ip)) {
  error = gfs2_unstuff_dinode(ip, ((void*)0));
  if (unlikely(error))
   goto out;
 }

 while (len) {
  struct buffer_head bh_map = { .b_state = 0, .b_blocknr = 0 };
  bh_map.b_size = len;
  set_buffer_zeronew(&bh_map);

  error = gfs2_block_map(inode, lblock, &bh_map, 1);
  if (unlikely(error))
   goto out;
  len -= bh_map.b_size;
  nr_blks = bh_map.b_size >> inode->i_blkbits;
  lblock += nr_blks;
  if (!buffer_new(&bh_map))
   continue;
  if (unlikely(!buffer_zeronew(&bh_map))) {
   error = -EIO;
   goto out;
  }
 }
 if (offset + size > inode->i_size && !(mode & FALLOC_FL_KEEP_SIZE))
  i_size_write(inode, offset + size);

 mark_inode_dirty(inode);

out:
 brelse(dibh);
 return error;
}
