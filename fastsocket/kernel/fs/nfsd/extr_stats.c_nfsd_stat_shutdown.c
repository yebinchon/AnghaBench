
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int svc_proc_unregister (char*) ;

void
nfsd_stat_shutdown(void)
{
 svc_proc_unregister("nfsd");
}
