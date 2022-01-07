
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lockd_down () ;
 int nfs4_state_shutdown () ;
 int nfsd_racache_shutdown () ;
 int nfsd_up ;

__attribute__((used)) static void nfsd_shutdown(void)
{






 if (!nfsd_up)
  return;
 nfs4_state_shutdown();
 lockd_down();
 nfsd_racache_shutdown();
 nfsd_up = 0;
}
