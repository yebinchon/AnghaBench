
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ls_ops; } ;
struct gfs2_sbd {TYPE_2__ sd_lockstruct; } ;
struct gfs2_glock {int gl_holders; int gl_hash; int gl_list; int gl_ref; struct gfs2_sbd* gl_sbd; } ;
struct address_space {scalar_t__ nrpages; } ;
struct TYPE_3__ {int (* lm_put_lock ) (struct gfs2_glock*) ;} ;


 int GLOCK_BUG_ON (struct gfs2_glock*,int) ;
 int __gfs2_glock_remove_from_lru (struct gfs2_glock*) ;
 scalar_t__ atomic_dec_and_lock (int *,int *) ;
 struct address_space* gfs2_glock2aspace (struct gfs2_glock*) ;
 int hlist_bl_del_rcu (int *) ;
 int list_empty (int *) ;
 int lru_lock ;
 int spin_lock_bucket (int ) ;
 int spin_unlock (int *) ;
 int spin_unlock_bucket (int ) ;
 int stub1 (struct gfs2_glock*) ;
 int trace_gfs2_glock_put (struct gfs2_glock*) ;

void gfs2_glock_put(struct gfs2_glock *gl)
{
 struct gfs2_sbd *sdp = gl->gl_sbd;
 struct address_space *mapping = gfs2_glock2aspace(gl);

 if (atomic_dec_and_lock(&gl->gl_ref, &lru_lock)) {
  __gfs2_glock_remove_from_lru(gl);
  spin_unlock(&lru_lock);
  spin_lock_bucket(gl->gl_hash);
  hlist_bl_del_rcu(&gl->gl_list);
  spin_unlock_bucket(gl->gl_hash);
  GLOCK_BUG_ON(gl, !list_empty(&gl->gl_holders));
  GLOCK_BUG_ON(gl, mapping && mapping->nrpages);
  trace_gfs2_glock_put(gl);
  sdp->sd_lockstruct.ls_ops->lm_put_lock(gl);
 }
}
