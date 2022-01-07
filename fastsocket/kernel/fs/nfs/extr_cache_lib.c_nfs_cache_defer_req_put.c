
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_cache_defer_req {int count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct nfs_cache_defer_req*) ;

void nfs_cache_defer_req_put(struct nfs_cache_defer_req *dreq)
{
 if (atomic_dec_and_test(&dreq->count))
  kfree(dreq);
}
