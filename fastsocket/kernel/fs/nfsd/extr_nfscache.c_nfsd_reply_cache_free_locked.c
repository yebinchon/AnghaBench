
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iov_base; scalar_t__ iov_len; } ;
struct svc_cacherep {scalar_t__ c_type; int c_lru; int c_hash; TYPE_1__ c_replvec; } ;


 scalar_t__ RC_REPLBUFF ;
 int drc_mem_usage ;
 int drc_slab ;
 int hlist_del (int *) ;
 int hlist_unhashed (int *) ;
 int kfree (scalar_t__) ;
 int kmem_cache_free (int ,struct svc_cacherep*) ;
 int list_del (int *) ;
 int num_drc_entries ;

__attribute__((used)) static void
nfsd_reply_cache_free_locked(struct svc_cacherep *rp)
{
 if (rp->c_type == RC_REPLBUFF && rp->c_replvec.iov_base) {
  drc_mem_usage -= rp->c_replvec.iov_len;
  kfree(rp->c_replvec.iov_base);
 }
 if (!hlist_unhashed(&rp->c_hash))
  hlist_del(&rp->c_hash);
 list_del(&rp->c_lru);
 --num_drc_entries;
 drc_mem_usage -= sizeof(*rp);
 kmem_cache_free(drc_slab, rp);
}
