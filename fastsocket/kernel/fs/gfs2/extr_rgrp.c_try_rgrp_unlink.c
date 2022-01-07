
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct gfs2_sbd {int sd_log_flush_lock; } ;
struct gfs2_rgrpd {int rd_flags; int rd_bits; struct gfs2_sbd* rd_sbd; } ;
struct gfs2_rbm {int offset; int bi; struct gfs2_rgrpd* rgd; } ;
struct gfs2_inode {int dummy; } ;
struct gfs2_glock {int gl_delete; struct gfs2_inode* gl_object; } ;


 int CREATE ;
 int ENOSPC ;
 int GFS2_BLKST_UNLINKED ;
 int GFS2_RDF_CHECK ;
 scalar_t__ NO_BLOCK ;
 int NR_CPUS ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int down_write (int *) ;
 int gfs2_delete_workqueue ;
 int gfs2_glock_get (struct gfs2_sbd*,scalar_t__,int *,int ,struct gfs2_glock**) ;
 int gfs2_glock_put (struct gfs2_glock*) ;
 int gfs2_inode_glops ;
 int gfs2_rbm_find (struct gfs2_rbm*,int ,int *,int *,int,int *) ;
 scalar_t__ gfs2_rbm_from_block (struct gfs2_rbm*,scalar_t__) ;
 scalar_t__ gfs2_rbm_to_block (struct gfs2_rbm*) ;
 scalar_t__ queue_work (int ,int *) ;
 int up_write (int *) ;

__attribute__((used)) static void try_rgrp_unlink(struct gfs2_rgrpd *rgd, u64 *last_unlinked, u64 skip)
{
 u64 block;
 struct gfs2_sbd *sdp = rgd->rd_sbd;
 struct gfs2_glock *gl;
 struct gfs2_inode *ip;
 int error;
 int found = 0;
 struct gfs2_rbm rbm = { .rgd = rgd, .bi = rgd->rd_bits, .offset = 0 };

 while (1) {
  down_write(&sdp->sd_log_flush_lock);
  error = gfs2_rbm_find(&rbm, GFS2_BLKST_UNLINKED, ((void*)0), ((void*)0),
          1, ((void*)0));
  up_write(&sdp->sd_log_flush_lock);
  if (error == -ENOSPC)
   break;
  if (WARN_ON_ONCE(error))
   break;

  block = gfs2_rbm_to_block(&rbm);
  if (gfs2_rbm_from_block(&rbm, block + 1))
   break;
  if (*last_unlinked != NO_BLOCK && block <= *last_unlinked)
   continue;
  if (block == skip)
   continue;
  *last_unlinked = block;

  error = gfs2_glock_get(sdp, block, &gfs2_inode_glops, CREATE, &gl);
  if (error)
   continue;
  ip = gl->gl_object;

  if (ip || queue_work(gfs2_delete_workqueue, &gl->gl_delete) == 0)
   gfs2_glock_put(gl);
  else
   found++;


  if (found > NR_CPUS)
   return;
 }

 rgd->rd_flags &= ~GFS2_RDF_CHECK;
 return;
}
