
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cache_register (int *) ;
 int cache_unregister (int *) ;
 int idtoname_cache ;
 int nametoid_cache ;

int
nfsd_idmap_init(void)
{
 int rv;

 rv = cache_register(&idtoname_cache);
 if (rv)
  return rv;
 rv = cache_register(&nametoid_cache);
 if (rv)
  cache_unregister(&idtoname_cache);
 return rv;
}
