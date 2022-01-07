
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct gfs2_sbd {int sd_rindex_uptodate; int sd_rindex; } ;
struct gfs2_rgrpd {int rd_flags; scalar_t__ rd_extfail_pt; scalar_t__ rd_free_clone; int rd_gl; } ;
struct TYPE_4__ {int i_mode; } ;
struct gfs2_inode {int i_no_addr; struct gfs2_rgrpd* i_rgd; TYPE_2__ i_inode; int i_goal; struct gfs2_blkreserv* i_res; } ;
struct TYPE_3__ {struct gfs2_rgrpd* rgd; } ;
struct gfs2_blkreserv {TYPE_1__ rs_rbm; int rs_rgd_gh; } ;
struct gfs2_alloc_parms {int aflags; scalar_t__ target; } ;


 int EBADSLT ;
 int ENOSPC ;
 int GFS2_AF_ORLOV ;
 struct gfs2_inode* GFS2_I (int ) ;
 int GFS2_RDF_CHECK ;
 int GFS2_RDF_ERROR ;
 int GFS2_RGF_NOALLOC ;
 struct gfs2_sbd* GFS2_SB (TYPE_2__*) ;
 int GLR_TRYFAILED ;
 int LM_FLAG_TRY ;
 int LM_ST_EXCLUSIVE ;
 int NO_BLOCK ;
 scalar_t__ S_ISDIR (int ) ;
 struct gfs2_rgrpd* gfs2_blk2rgrpd (struct gfs2_sbd*,int ,int) ;
 int gfs2_glock_dq_uninit (int *) ;
 int gfs2_glock_is_locked_by_me (int ) ;
 int gfs2_glock_nq_init (int ,int ,int,int *) ;
 int gfs2_log_flush (struct gfs2_sbd*,int *) ;
 scalar_t__ gfs2_orlov_skip (struct gfs2_inode*) ;
 int gfs2_ri_update (struct gfs2_inode*) ;
 scalar_t__ gfs2_rs_active (struct gfs2_blkreserv*) ;
 int gfs2_rs_deltree (struct gfs2_blkreserv*) ;
 scalar_t__ gfs2_select_rgrp (struct gfs2_rgrpd**,struct gfs2_rgrpd*) ;
 int rg_mblk_search (struct gfs2_rgrpd*,struct gfs2_inode*,struct gfs2_alloc_parms const*) ;
 scalar_t__ rgrp_contains_block (struct gfs2_rgrpd*,int ) ;
 int try_rgrp_unlink (struct gfs2_rgrpd*,int *,int ) ;
 scalar_t__ unlikely (int) ;

int gfs2_inplace_reserve(struct gfs2_inode *ip, const struct gfs2_alloc_parms *ap)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 struct gfs2_rgrpd *begin = ((void*)0);
 struct gfs2_blkreserv *rs = ip->i_res;
 int error, rg_locked, flags = LM_FLAG_TRY;
 u64 last_unlinked = NO_BLOCK;
 int loops = 0;
 u32 skip = 0;

 if (gfs2_rs_active(rs)) {
  begin = rs->rs_rbm.rgd;
 } else {
  if (ip->i_rgd && rgrp_contains_block(ip->i_rgd, ip->i_goal)) {
   rs->rs_rbm.rgd = begin = ip->i_rgd;
  } else {
   rs->rs_rbm.rgd = begin = gfs2_blk2rgrpd(sdp, ip->i_goal, 1);
  }
  if (S_ISDIR(ip->i_inode.i_mode) && (ap->aflags & GFS2_AF_ORLOV))
   skip = gfs2_orlov_skip(ip);
 }
 if (rs->rs_rbm.rgd == ((void*)0))
  return -EBADSLT;

 while (loops < 3) {
  rg_locked = 1;

  if (!gfs2_glock_is_locked_by_me(rs->rs_rbm.rgd->rd_gl)) {
   rg_locked = 0;
   if (skip && skip--)
    goto next_rgrp;
   error = gfs2_glock_nq_init(rs->rs_rbm.rgd->rd_gl,
         LM_ST_EXCLUSIVE,
         gfs2_rs_active(rs) ? 0 : flags,
         &rs->rs_rgd_gh);
   if (error == GLR_TRYFAILED)
    goto next_rgrp;
   if (unlikely(error))
    return error;
  }

  if ((rs->rs_rbm.rgd->rd_flags & (GFS2_RGF_NOALLOC |
       GFS2_RDF_ERROR)) ||
      (ap && (ap->target > rs->rs_rbm.rgd->rd_extfail_pt)))
   goto skip_rgrp;


  if (!gfs2_rs_active(rs))
   rg_mblk_search(rs->rs_rbm.rgd, ip, ap);


  if (!gfs2_rs_active(rs) && (loops < 1))
   goto check_rgrp;


  if (rs->rs_rbm.rgd->rd_free_clone >= ap->target) {
   ip->i_rgd = rs->rs_rbm.rgd;
   return 0;
  }

check_rgrp:

  if (rs->rs_rbm.rgd->rd_flags & GFS2_RDF_CHECK)
   try_rgrp_unlink(rs->rs_rbm.rgd, &last_unlinked,
     ip->i_no_addr);
skip_rgrp:

  if (gfs2_rs_active(rs))
   gfs2_rs_deltree(rs);


  if (!rg_locked)
   gfs2_glock_dq_uninit(&rs->rs_rgd_gh);
next_rgrp:

  if (gfs2_select_rgrp(&rs->rs_rbm.rgd, begin))
   continue;
  if (skip)
   continue;





  flags &= ~LM_FLAG_TRY;
  loops++;

  if (ip == GFS2_I(sdp->sd_rindex) && !sdp->sd_rindex_uptodate) {
   error = gfs2_ri_update(ip);
   if (error)
    return error;
  }

  if (loops == 2)
   gfs2_log_flush(sdp, ((void*)0));
 }
 return -ENOSPC;
}
