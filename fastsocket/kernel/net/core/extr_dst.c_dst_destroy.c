
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neighbour {int dummy; } ;
struct hh_cache {int hh_refcnt; } ;
struct dst_entry {int flags; int __refcnt; TYPE_1__* ops; scalar_t__ dev; struct neighbour* neighbour; struct hh_cache* hh; struct dst_entry* child; } ;
struct TYPE_2__ {int kmem_cachep; int (* destroy ) (struct dst_entry*) ;int entries; } ;


 int DST_NOHASH ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int dev_put (scalar_t__) ;
 int dst_total ;
 int kfree (struct hh_cache*) ;
 int kmem_cache_free (int ,struct dst_entry*) ;
 int neigh_release (struct neighbour*) ;
 int smp_rmb () ;
 int stub1 (struct dst_entry*) ;

struct dst_entry *dst_destroy(struct dst_entry * dst)
{
 struct dst_entry *child;
 struct neighbour *neigh;
 struct hh_cache *hh;

 smp_rmb();

again:
 neigh = dst->neighbour;
 hh = dst->hh;
 child = dst->child;

 dst->hh = ((void*)0);
 if (hh && atomic_dec_and_test(&hh->hh_refcnt))
  kfree(hh);

 if (neigh) {
  dst->neighbour = ((void*)0);
  neigh_release(neigh);
 }

 atomic_dec(&dst->ops->entries);

 if (dst->ops->destroy)
  dst->ops->destroy(dst);
 if (dst->dev)
  dev_put(dst->dev);



 kmem_cache_free(dst->ops->kmem_cachep, dst);

 dst = child;
 if (dst) {
  int nohash = dst->flags & DST_NOHASH;

  if (atomic_dec_and_test(&dst->__refcnt)) {

   if (nohash)
    goto again;
  } else {

   if (nohash)
    return dst;

  }
 }
 return ((void*)0);
}
