
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dprintk (char*) ;
 int locks_end_grace (int *) ;
 int nfsd4_grace ;
 int nfsd4_lease ;
 int nfsd4_manager ;
 int nfsd4_recdir_purge_old () ;

__attribute__((used)) static void
nfsd4_end_grace(void)
{
 dprintk("NFSD: end of grace period\n");
 nfsd4_recdir_purge_old();
 locks_end_grace(&nfsd4_manager);





 nfsd4_grace = nfsd4_lease;
}
