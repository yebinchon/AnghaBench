
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cache_unregister (int *) ;
 int dprintk (char*) ;
 int exp_writelock () ;
 int exp_writeunlock () ;
 int svc_expkey_cache ;
 int svc_export_cache ;
 int svcauth_unix_purge () ;

void
nfsd_export_shutdown(void)
{

 dprintk("nfsd: shutting down export module.\n");

 exp_writelock();

 cache_unregister(&svc_expkey_cache);
 cache_unregister(&svc_export_cache);
 svcauth_unix_purge();

 exp_writeunlock();
 dprintk("nfsd: export shutdown complete.\n");
}
