
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cache_unregister (int *) ;
 int idtoname_cache ;
 int nametoid_cache ;

void
nfsd_idmap_shutdown(void)
{
 cache_unregister(&idtoname_cache);
 cache_unregister(&nametoid_cache);
}
