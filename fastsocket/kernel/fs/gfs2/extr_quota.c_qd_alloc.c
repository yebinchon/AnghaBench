
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_quota_data {int qd_slot; int qd_gl; int qd_reclaim; int qd_flags; scalar_t__ qd_id; int qd_count; } ;


 int CREATE ;
 int ENOMEM ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int QDF_USER ;
 int atomic_set (int *,int) ;
 int gfs2_glock_get (struct gfs2_sbd*,int,int *,int ,int *) ;
 int gfs2_quota_glops ;
 int gfs2_quotad_cachep ;
 int kmem_cache_free (int ,struct gfs2_quota_data*) ;
 struct gfs2_quota_data* kmem_cache_zalloc (int ,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int qd_alloc(struct gfs2_sbd *sdp, int user, u32 id,
      struct gfs2_quota_data **qdp)
{
 struct gfs2_quota_data *qd;
 int error;

 qd = kmem_cache_zalloc(gfs2_quotad_cachep, GFP_NOFS);
 if (!qd)
  return -ENOMEM;

 atomic_set(&qd->qd_count, 1);
 qd->qd_id = id;
 if (user)
  set_bit(QDF_USER, &qd->qd_flags);
 qd->qd_slot = -1;
 INIT_LIST_HEAD(&qd->qd_reclaim);

 error = gfs2_glock_get(sdp, 2 * (u64)id + !user,
         &gfs2_quota_glops, CREATE, &qd->qd_gl);
 if (error)
  goto fail;

 *qdp = qd;

 return 0;

fail:
 kmem_cache_free(gfs2_quotad_cachep, qd);
 return error;
}
