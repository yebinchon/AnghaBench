
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinfo {int totalram; } ;


 int ENOMEM ;
 int NFSSVC_MAXBLKSIZE ;
 int PAGE_SHIFT ;
 int THIS_MODULE ;
 int WARN_ON (int) ;
 int do_gettimeofday (int *) ;
 int mutex_is_locked (int *) ;
 int nfsd ;
 int nfsd_last_thread ;
 int nfsd_max_blksize ;
 int nfsd_mutex ;
 int nfsd_program ;
 int nfsd_reset_versions () ;
 int * nfsd_serv ;
 int nfssvc_boot ;
 int set_max_drc () ;
 int si_meminfo (struct sysinfo*) ;
 int * svc_create_pooled (int *,int,int ,int ,int ) ;
 int svc_get (int *) ;

int nfsd_create_serv(void)
{
 int err = 0;

 WARN_ON(!mutex_is_locked(&nfsd_mutex));
 if (nfsd_serv) {
  svc_get(nfsd_serv);
  return 0;
 }
 if (nfsd_max_blksize == 0) {

  struct sysinfo i;
  si_meminfo(&i);






  nfsd_max_blksize = NFSSVC_MAXBLKSIZE;
  i.totalram <<= PAGE_SHIFT - 12;
  while (nfsd_max_blksize > i.totalram &&
         nfsd_max_blksize >= 8*1024*2)
   nfsd_max_blksize /= 2;
 }
 nfsd_reset_versions();

 nfsd_serv = svc_create_pooled(&nfsd_program, nfsd_max_blksize,
          nfsd_last_thread, nfsd, THIS_MODULE);
 if (nfsd_serv == ((void*)0))
  return -ENOMEM;

 set_max_drc();
 do_gettimeofday(&nfssvc_boot);
 return err;
}
