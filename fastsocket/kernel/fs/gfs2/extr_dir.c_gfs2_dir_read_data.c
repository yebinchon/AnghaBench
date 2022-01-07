
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_2__ {unsigned int sb_bsize; } ;
struct gfs2_sbd {TYPE_1__ sd_sb; int sd_jbsize; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int i_gl; int i_inode; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int BUG_ON (int) ;
 int DIO_WAIT ;
 int EINVAL ;
 int GFS2_METATYPE_JD ;
 struct gfs2_sbd* GFS2_SB (int *) ;
 int brelse (struct buffer_head*) ;
 int do_div (scalar_t__,int ) ;
 scalar_t__ gfs2_assert_warn (struct gfs2_sbd*,int ) ;
 int gfs2_dir_read_stuffed (struct gfs2_inode*,char*,scalar_t__,unsigned int) ;
 int gfs2_extent_map (int *,scalar_t__,int*,scalar_t__*,int*) ;
 int gfs2_is_jdata (struct gfs2_inode*) ;
 scalar_t__ gfs2_is_stuffed (struct gfs2_inode*) ;
 struct buffer_head* gfs2_meta_ra (int ,scalar_t__,int) ;
 int gfs2_meta_read (int ,scalar_t__,int ,struct buffer_head**) ;
 int gfs2_metatype_check (struct gfs2_sbd*,struct buffer_head*,int ) ;
 scalar_t__ i_size_read (int *) ;
 int memcpy (char*,scalar_t__,unsigned int) ;

__attribute__((used)) static int gfs2_dir_read_data(struct gfs2_inode *ip, char *buf, u64 offset,
         unsigned int size, unsigned ra)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 u64 lblock, dblock;
 u32 extlen = 0;
 unsigned int o;
 int copied = 0;
 int error = 0;
 u64 disksize = i_size_read(&ip->i_inode);

 if (offset >= disksize)
  return 0;

 if (offset + size > disksize)
  size = disksize - offset;

 if (!size)
  return 0;

 if (gfs2_is_stuffed(ip))
  return gfs2_dir_read_stuffed(ip, buf, offset, size);

 if (gfs2_assert_warn(sdp, gfs2_is_jdata(ip)))
  return -EINVAL;

 lblock = offset;
 o = do_div(lblock, sdp->sd_jbsize) + sizeof(struct gfs2_meta_header);

 while (copied < size) {
  unsigned int amount;
  struct buffer_head *bh;
  int new;

  amount = size - copied;
  if (amount > sdp->sd_sb.sb_bsize - o)
   amount = sdp->sd_sb.sb_bsize - o;

  if (!extlen) {
   new = 0;
   error = gfs2_extent_map(&ip->i_inode, lblock, &new,
      &dblock, &extlen);
   if (error || !dblock)
    goto fail;
   BUG_ON(extlen < 1);
   if (!ra)
    extlen = 1;
   bh = gfs2_meta_ra(ip->i_gl, dblock, extlen);
  } else {
   error = gfs2_meta_read(ip->i_gl, dblock, DIO_WAIT, &bh);
   if (error)
    goto fail;
  }
  error = gfs2_metatype_check(sdp, bh, GFS2_METATYPE_JD);
  if (error) {
   brelse(bh);
   goto fail;
  }
  dblock++;
  extlen--;
  memcpy(buf, bh->b_data + o, amount);
  brelse(bh);
  buf += amount;
  copied += amount;
  lblock++;
  o = sizeof(struct gfs2_meta_header);
 }

 return copied;
fail:
 return (copied) ? copied : error;
}
