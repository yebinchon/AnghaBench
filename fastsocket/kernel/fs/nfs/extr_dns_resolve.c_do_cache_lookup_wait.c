
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_dns_ent {int dummy; } ;
struct nfs_cache_defer_req {int dummy; } ;
struct cache_detail {int dummy; } ;


 int EAGAIN ;
 int ENOMEM ;
 int do_cache_lookup (struct cache_detail*,struct nfs_dns_ent*,struct nfs_dns_ent**,struct nfs_cache_defer_req*) ;
 int do_cache_lookup_nowait (struct cache_detail*,struct nfs_dns_ent*,struct nfs_dns_ent**) ;
 struct nfs_cache_defer_req* nfs_cache_defer_req_alloc () ;
 int nfs_cache_defer_req_put (struct nfs_cache_defer_req*) ;
 int nfs_cache_wait_for_upcall (struct nfs_cache_defer_req*) ;

__attribute__((used)) static int do_cache_lookup_wait(struct cache_detail *cd,
  struct nfs_dns_ent *key,
  struct nfs_dns_ent **item)
{
 struct nfs_cache_defer_req *dreq;
 int ret = -ENOMEM;

 dreq = nfs_cache_defer_req_alloc();
 if (!dreq)
  goto out;
 ret = do_cache_lookup(cd, key, item, dreq);
 if (ret == -EAGAIN) {
  ret = nfs_cache_wait_for_upcall(dreq);
  if (!ret)
   ret = do_cache_lookup_nowait(cd, key, item);
 }
 nfs_cache_defer_req_put(dreq);
out:
 return ret;
}
