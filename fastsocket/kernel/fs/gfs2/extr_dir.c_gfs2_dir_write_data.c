
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_5__ {int sb_bsize; } ;
struct gfs2_sbd {unsigned int sd_jbsize; TYPE_1__ sd_sb; } ;
struct gfs2_meta_header {int dummy; } ;
struct TYPE_6__ {int i_size; int i_ctime; int i_mtime; } ;
struct gfs2_inode {int i_gl; TYPE_2__ i_inode; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int CURRENT_TIME ;
 int EINVAL ;
 int EIO ;
 struct gfs2_sbd* GFS2_SB (TYPE_2__*) ;
 int brelse (struct buffer_head*) ;
 int do_div (int,unsigned int) ;
 scalar_t__ gfs2_assert_warn (struct gfs2_sbd*,int ) ;
 scalar_t__ gfs2_assert_withdraw (struct gfs2_sbd*,int) ;
 int gfs2_dinode_out (struct gfs2_inode*,scalar_t__) ;
 int gfs2_dir_get_existing_buffer (struct gfs2_inode*,int,struct buffer_head**) ;
 int gfs2_dir_get_new_buffer (struct gfs2_inode*,int,struct buffer_head**) ;
 int gfs2_dir_write_stuffed (struct gfs2_inode*,char const*,unsigned int,unsigned int) ;
 int gfs2_extent_map (TYPE_2__*,int,int*,int*,scalar_t__*) ;
 int gfs2_is_jdata (struct gfs2_inode*) ;
 scalar_t__ gfs2_is_stuffed (struct gfs2_inode*) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;
 int gfs2_unstuff_dinode (struct gfs2_inode*,int *) ;
 int i_size_write (TYPE_2__*,int) ;
 int memcpy (scalar_t__,char const*,unsigned int) ;

__attribute__((used)) static int gfs2_dir_write_data(struct gfs2_inode *ip, const char *buf,
          u64 offset, unsigned int size)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 struct buffer_head *dibh;
 u64 lblock, dblock;
 u32 extlen = 0;
 unsigned int o;
 int copied = 0;
 int error = 0;
 int new = 0;

 if (!size)
  return 0;

 if (gfs2_is_stuffed(ip) &&
     offset + size <= sdp->sd_sb.sb_bsize - sizeof(struct gfs2_dinode))
  return gfs2_dir_write_stuffed(ip, buf, (unsigned int)offset,
           size);

 if (gfs2_assert_warn(sdp, gfs2_is_jdata(ip)))
  return -EINVAL;

 if (gfs2_is_stuffed(ip)) {
  error = gfs2_unstuff_dinode(ip, ((void*)0));
  if (error)
   return error;
 }

 lblock = offset;
 o = do_div(lblock, sdp->sd_jbsize) + sizeof(struct gfs2_meta_header);

 while (copied < size) {
  unsigned int amount;
  struct buffer_head *bh;

  amount = size - copied;
  if (amount > sdp->sd_sb.sb_bsize - o)
   amount = sdp->sd_sb.sb_bsize - o;

  if (!extlen) {
   new = 1;
   error = gfs2_extent_map(&ip->i_inode, lblock, &new,
      &dblock, &extlen);
   if (error)
    goto fail;
   error = -EIO;
   if (gfs2_assert_withdraw(sdp, dblock))
    goto fail;
  }

  if (amount == sdp->sd_jbsize || new)
   error = gfs2_dir_get_new_buffer(ip, dblock, &bh);
  else
   error = gfs2_dir_get_existing_buffer(ip, dblock, &bh);

  if (error)
   goto fail;

  gfs2_trans_add_meta(ip->i_gl, bh);
  memcpy(bh->b_data + o, buf, amount);
  brelse(bh);

  buf += amount;
  copied += amount;
  lblock++;
  dblock++;
  extlen--;

  o = sizeof(struct gfs2_meta_header);
 }

out:
 error = gfs2_meta_inode_buffer(ip, &dibh);
 if (error)
  return error;

 if (ip->i_inode.i_size < offset + copied)
  i_size_write(&ip->i_inode, offset + copied);
 ip->i_inode.i_mtime = ip->i_inode.i_ctime = CURRENT_TIME;

 gfs2_trans_add_meta(ip->i_gl, dibh);
 gfs2_dinode_out(ip, dibh->b_data);
 brelse(dibh);

 return copied;
fail:
 if (copied)
  goto out;
 return error;
}
