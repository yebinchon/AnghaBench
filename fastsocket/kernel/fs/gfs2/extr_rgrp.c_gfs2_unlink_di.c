
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {TYPE_1__* rd_bits; int rd_gl; } ;
struct gfs2_inode {int i_no_addr; } ;
struct TYPE_4__ {int b_data; } ;
struct TYPE_3__ {TYPE_2__* bi_bh; } ;


 int GFS2_BLKST_UNLINKED ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 int gfs2_rgrp_out (struct gfs2_rgrpd*,int ) ;
 int gfs2_trans_add_meta (int ,TYPE_2__*) ;
 struct gfs2_rgrpd* rgblk_free (struct gfs2_sbd*,int ,int,int ) ;
 int trace_gfs2_block_alloc (struct gfs2_inode*,struct gfs2_rgrpd*,int ,int,int ) ;

void gfs2_unlink_di(struct inode *inode)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 struct gfs2_rgrpd *rgd;
 u64 blkno = ip->i_no_addr;

 rgd = rgblk_free(sdp, blkno, 1, GFS2_BLKST_UNLINKED);
 if (!rgd)
  return;
 trace_gfs2_block_alloc(ip, rgd, blkno, 1, GFS2_BLKST_UNLINKED);
 gfs2_trans_add_meta(rgd->rd_gl, rgd->rd_bits[0].bi_bh);
 gfs2_rgrp_out(rgd, rgd->rd_bits[0].bi_bh->b_data);
}
