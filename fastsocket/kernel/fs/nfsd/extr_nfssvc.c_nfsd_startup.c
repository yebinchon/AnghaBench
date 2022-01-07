
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lockd_down () ;
 int lockd_up () ;
 int nfs4_state_start () ;
 int nfsd_init_socks (unsigned short) ;
 int nfsd_racache_init (int) ;
 int nfsd_racache_shutdown () ;
 int nfsd_up ;

__attribute__((used)) static int nfsd_startup(unsigned short port, int nrservs)
{
 int ret;

 if (nfsd_up)
  return 0;





 ret = nfsd_racache_init(2*nrservs);
 if (ret)
  return ret;
 ret = nfsd_init_socks(port);
 if (ret)
  goto out_racache;
 ret = lockd_up();
 if (ret)
  goto out_racache;
 ret = nfs4_state_start();
 if (ret)
  goto out_lockd;
 nfsd_up = 1;
 return 0;
out_lockd:
 lockd_down();
out_racache:
 nfsd_racache_shutdown();
 return ret;
}
