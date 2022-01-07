
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct gfs2_jdesc {int jd_inode; } ;
struct gfs2_inode {int i_inode; struct gfs2_glock* i_gl; } ;
struct gfs2_glock {int dummy; } ;
struct buffer_head {int dummy; } ;


 int EIO ;
 struct gfs2_inode* GFS2_I (int ) ;
 int gfs2_consist_inode (struct gfs2_inode*) ;
 int gfs2_extent_map (int *,unsigned int,int*,int *,int *) ;
 struct buffer_head* gfs2_meta_ra (struct gfs2_glock*,int ,int ) ;

int gfs2_replay_read_block(struct gfs2_jdesc *jd, unsigned int blk,
      struct buffer_head **bh)
{
 struct gfs2_inode *ip = GFS2_I(jd->jd_inode);
 struct gfs2_glock *gl = ip->i_gl;
 int new = 0;
 u64 dblock;
 u32 extlen;
 int error;

 error = gfs2_extent_map(&ip->i_inode, blk, &new, &dblock, &extlen);
 if (error)
  return error;
 if (!dblock) {
  gfs2_consist_inode(ip);
  return -EIO;
 }

 *bh = gfs2_meta_ra(gl, dblock, extlen);

 return error;
}
