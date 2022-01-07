
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct nfs_dns_ent {char* hostname; size_t namelen; size_t addrlen; int h; int addr; } ;
typedef size_t ssize_t ;


 size_t ENOENT ;
 size_t EOVERFLOW ;
 size_t ESRCH ;
 int cache_put (int *,int *) ;
 size_t do_cache_lookup_wait (int *,struct nfs_dns_ent*,struct nfs_dns_ent**) ;
 int memcpy (struct sockaddr*,int *,size_t) ;
 int nfs_dns_resolve ;

ssize_t nfs_dns_resolve_name(char *name, size_t namelen,
  struct sockaddr *sa, size_t salen)
{
 struct nfs_dns_ent key = {
  .hostname = name,
  .namelen = namelen,
 };
 struct nfs_dns_ent *item = ((void*)0);
 ssize_t ret;

 ret = do_cache_lookup_wait(&nfs_dns_resolve, &key, &item);
 if (ret == 0) {
  if (salen >= item->addrlen) {
   memcpy(sa, &item->addr, item->addrlen);
   ret = item->addrlen;
  } else
   ret = -EOVERFLOW;
  cache_put(&item->h, &nfs_dns_resolve);
 } else if (ret == -ENOENT)
  ret = -ESRCH;
 return ret;
}
