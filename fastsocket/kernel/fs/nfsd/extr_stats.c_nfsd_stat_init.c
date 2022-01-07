
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nfsd_proc_fops ;
 int nfsd_svcstats ;
 int svc_proc_register (int *,int *) ;

void
nfsd_stat_init(void)
{
 svc_proc_register(&nfsd_svcstats, &nfsd_proc_fops);
}
