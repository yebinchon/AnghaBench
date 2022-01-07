
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_cacherep {int c_xid; int c_hash; } ;


 scalar_t__ cache_hash ;
 scalar_t__ hash_32 (int ,int ) ;
 int hlist_add_head (int *,scalar_t__) ;
 int hlist_del_init (int *) ;
 int maskbits ;

__attribute__((used)) static void
hash_refile(struct svc_cacherep *rp)
{
 hlist_del_init(&rp->c_hash);
 hlist_add_head(&rp->c_hash, cache_hash + hash_32(rp->c_xid, maskbits));
}
