
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_cacherep {int c_hash; int c_lru; int c_type; int c_state; } ;


 int GFP_KERNEL ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int RC_NOCACHE ;
 int RC_UNUSED ;
 int drc_slab ;
 struct svc_cacherep* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static struct svc_cacherep *
nfsd_reply_cache_alloc(void)
{
 struct svc_cacherep *rp;

 rp = kmem_cache_alloc(drc_slab, GFP_KERNEL);
 if (rp) {
  rp->c_state = RC_UNUSED;
  rp->c_type = RC_NOCACHE;
  INIT_LIST_HEAD(&rp->c_lru);
  INIT_HLIST_NODE(&rp->c_hash);
 }
 return rp;
}
