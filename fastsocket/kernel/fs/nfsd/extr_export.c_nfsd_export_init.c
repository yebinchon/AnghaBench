
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cache_register (int *) ;
 int cache_unregister (int *) ;
 int dprintk (char*) ;
 int svc_expkey_cache ;
 int svc_export_cache ;

int
nfsd_export_init(void)
{
 int rv;
 dprintk("nfsd: initializing export module.\n");

 rv = cache_register(&svc_export_cache);
 if (rv)
  return rv;
 rv = cache_register(&svc_expkey_cache);
 if (rv)
  cache_unregister(&svc_export_cache);
 return rv;

}
