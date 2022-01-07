
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cache_purge (int *) ;
 int exp_writelock () ;
 int exp_writeunlock () ;
 int svc_expkey_cache ;
 int svc_export_cache ;

void
nfsd_export_flush(void)
{
 exp_writelock();
 cache_purge(&svc_expkey_cache);
 cache_purge(&svc_export_cache);
 exp_writeunlock();
}
