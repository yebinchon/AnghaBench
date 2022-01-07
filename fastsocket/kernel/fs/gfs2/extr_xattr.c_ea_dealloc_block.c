
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {int rd_gl; } ;
struct gfs2_inode {int i_gl; int i_inode; int i_eattr; } ;
struct gfs2_holder {int dummy; } ;
struct buffer_head {int b_data; } ;


 int EIO ;
 struct gfs2_sbd* GFS2_SB (int *) ;
 int LM_ST_EXCLUSIVE ;
 scalar_t__ RES_DINODE ;
 scalar_t__ RES_QUOTA ;
 scalar_t__ RES_RG_BIT ;
 scalar_t__ RES_STATFS ;
 int brelse (struct buffer_head*) ;
 int gfs2_add_inode_blocks (int *,int) ;
 struct gfs2_rgrpd* gfs2_blk2rgrpd (struct gfs2_sbd*,int ,int) ;
 int gfs2_consist_inode (struct gfs2_inode*) ;
 int gfs2_dinode_out (struct gfs2_inode*,int ) ;
 int gfs2_free_meta (struct gfs2_inode*,int ,int) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int gfs2_rindex_update (struct gfs2_sbd*) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;
 int gfs2_trans_begin (struct gfs2_sbd*,scalar_t__,int) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;

__attribute__((used)) static int ea_dealloc_block(struct gfs2_inode *ip)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 struct gfs2_rgrpd *rgd;
 struct buffer_head *dibh;
 struct gfs2_holder gh;
 int error;

 error = gfs2_rindex_update(sdp);
 if (error)
  return error;

 rgd = gfs2_blk2rgrpd(sdp, ip->i_eattr, 1);
 if (!rgd) {
  gfs2_consist_inode(ip);
  return -EIO;
 }

 error = gfs2_glock_nq_init(rgd->rd_gl, LM_ST_EXCLUSIVE, 0, &gh);
 if (error)
  return error;

 error = gfs2_trans_begin(sdp, RES_RG_BIT + RES_DINODE + RES_STATFS +
     RES_QUOTA, 1);
 if (error)
  goto out_gunlock;

 gfs2_free_meta(ip, ip->i_eattr, 1);

 ip->i_eattr = 0;
 gfs2_add_inode_blocks(&ip->i_inode, -1);

 error = gfs2_meta_inode_buffer(ip, &dibh);
 if (!error) {
  gfs2_trans_add_meta(ip->i_gl, dibh);
  gfs2_dinode_out(ip, dibh->b_data);
  brelse(dibh);
 }

 gfs2_trans_end(sdp);

out_gunlock:
 gfs2_glock_dq_uninit(&gh);
 return error;
}
