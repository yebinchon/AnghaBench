
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct inode {struct address_space* i_mapping; } ;
struct TYPE_3__ {int sb_bsize; } ;
struct gfs2_sbd {TYPE_1__ sd_sb; } ;
struct TYPE_4__ {int i_ctime; int i_mtime; } ;
struct gfs2_inode {TYPE_2__ i_inode; int i_diskflags; int i_gl; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {int b_data; } ;
struct address_space {int dummy; } ;


 int CURRENT_TIME ;
 int GFS2_DIF_TRUNC_IN_PROG ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 int GFS2_JTRUNC_REVOKES ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 scalar_t__ RES_DINODE ;
 scalar_t__ RES_JDATA ;
 int brelse (struct buffer_head*) ;
 int gfs2_block_truncate_page (struct address_space*,int) ;
 int gfs2_buffer_clear_tail (struct buffer_head*,int) ;
 int gfs2_dinode_out (struct gfs2_inode*,int ) ;
 int gfs2_is_jdata (struct gfs2_inode*) ;
 scalar_t__ gfs2_is_stuffed (struct gfs2_inode*) ;
 int gfs2_journaled_truncate (struct inode*,int,int) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;
 int gfs2_trans_begin (struct gfs2_sbd*,scalar_t__,int ) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;
 int i_size_write (struct inode*,int) ;
 int truncate_pagecache (struct inode*,int,int) ;

__attribute__((used)) static int trunc_start(struct inode *inode, u64 oldsize, u64 newsize)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 struct address_space *mapping = inode->i_mapping;
 struct buffer_head *dibh;
 int journaled = gfs2_is_jdata(ip);
 int error;

 if (journaled)
  error = gfs2_trans_begin(sdp, RES_DINODE + RES_JDATA, GFS2_JTRUNC_REVOKES);
 else
  error = gfs2_trans_begin(sdp, RES_DINODE, 0);
 if (error)
  return error;

 error = gfs2_meta_inode_buffer(ip, &dibh);
 if (error)
  goto out;

 gfs2_trans_add_meta(ip->i_gl, dibh);

 if (gfs2_is_stuffed(ip)) {
  gfs2_buffer_clear_tail(dibh, sizeof(struct gfs2_dinode) + newsize);
 } else {
  if (newsize & (u64)(sdp->sd_sb.sb_bsize - 1)) {
   error = gfs2_block_truncate_page(mapping, newsize);
   if (error)
    goto out_brelse;
  }
  ip->i_diskflags |= GFS2_DIF_TRUNC_IN_PROG;
 }

 i_size_write(inode, newsize);
 ip->i_inode.i_mtime = ip->i_inode.i_ctime = CURRENT_TIME;
 gfs2_dinode_out(ip, dibh->b_data);

 if (journaled)
  error = gfs2_journaled_truncate(inode, oldsize, newsize);
 else
  truncate_pagecache(inode, oldsize, newsize);

 if (error) {
  brelse(dibh);
  return error;
 }

out_brelse:
 brelse(dibh);
out:
 gfs2_trans_end(sdp);
 return error;
}
