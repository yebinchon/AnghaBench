
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct gfs2_sbd {TYPE_1__* sd_vfs; } ;
struct TYPE_2__ {scalar_t__ s_blocksize; } ;


 scalar_t__ GFS2_JTRUNC_REVOKES ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 int RES_DINODE ;
 int gfs2_trans_begin (struct gfs2_sbd*,int ,scalar_t__) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;
 int truncate_pagecache (struct inode*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int gfs2_journaled_truncate(struct inode *inode, u64 oldsize, u64 newsize)
{
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 u64 max_chunk = GFS2_JTRUNC_REVOKES * sdp->sd_vfs->s_blocksize;
 u64 chunk;
 int error;

 while (oldsize != newsize) {
  chunk = oldsize - newsize;
  if (chunk > max_chunk)
   chunk = max_chunk;
  truncate_pagecache(inode, oldsize, oldsize - chunk);
  oldsize -= chunk;
  gfs2_trans_end(sdp);
  error = gfs2_trans_begin(sdp, RES_DINODE, GFS2_JTRUNC_REVOKES);
  if (error)
   return error;
 }

 return 0;
}
