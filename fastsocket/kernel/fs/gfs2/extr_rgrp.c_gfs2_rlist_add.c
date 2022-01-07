
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {int dummy; } ;
struct gfs2_rgrp_list {unsigned int rl_rgrps; unsigned int rl_space; struct gfs2_rgrpd** rl_rgd; int rl_ghs; } ;
struct gfs2_inode {struct gfs2_rgrpd* i_rgd; int i_inode; } ;


 int GFP_NOFS ;
 struct gfs2_sbd* GFS2_SB (int *) ;
 int __GFP_NOFAIL ;
 int fs_err (struct gfs2_sbd*,char*,unsigned long long) ;
 scalar_t__ gfs2_assert_warn (struct gfs2_sbd*,int) ;
 struct gfs2_rgrpd* gfs2_blk2rgrpd (struct gfs2_sbd*,scalar_t__,int) ;
 struct gfs2_rgrpd** kcalloc (unsigned int,int,int) ;
 int kfree (struct gfs2_rgrpd**) ;
 int memcpy (struct gfs2_rgrpd**,struct gfs2_rgrpd**,int) ;
 scalar_t__ rgrp_contains_block (struct gfs2_rgrpd*,scalar_t__) ;

void gfs2_rlist_add(struct gfs2_inode *ip, struct gfs2_rgrp_list *rlist,
      u64 block)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 struct gfs2_rgrpd *rgd;
 struct gfs2_rgrpd **tmp;
 unsigned int new_space;
 unsigned int x;

 if (gfs2_assert_warn(sdp, !rlist->rl_ghs))
  return;

 if (ip->i_rgd && rgrp_contains_block(ip->i_rgd, block))
  rgd = ip->i_rgd;
 else
  rgd = gfs2_blk2rgrpd(sdp, block, 1);
 if (!rgd) {
  fs_err(sdp, "rlist_add: no rgrp for block %llu\n", (unsigned long long)block);
  return;
 }
 ip->i_rgd = rgd;

 for (x = 0; x < rlist->rl_rgrps; x++)
  if (rlist->rl_rgd[x] == rgd)
   return;

 if (rlist->rl_rgrps == rlist->rl_space) {
  new_space = rlist->rl_space + 10;

  tmp = kcalloc(new_space, sizeof(struct gfs2_rgrpd *),
         GFP_NOFS | __GFP_NOFAIL);

  if (rlist->rl_rgd) {
   memcpy(tmp, rlist->rl_rgd,
          rlist->rl_space * sizeof(struct gfs2_rgrpd *));
   kfree(rlist->rl_rgd);
  }

  rlist->rl_space = new_space;
  rlist->rl_rgd = tmp;
 }

 rlist->rl_rgd[rlist->rl_rgrps++] = rgd;
}
