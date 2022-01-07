
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amfs_nfsx {int nx_c; struct amfs_nfsx* nx_v; int * n_mnt; } ;
typedef scalar_t__ opaque_t ;
typedef int mntfs ;


 int XFREE (struct amfs_nfsx*) ;
 int free_mntfs (int *) ;

__attribute__((used)) static void
amfs_nfsx_prfree(opaque_t vp)
{
  struct amfs_nfsx *nx = (struct amfs_nfsx *) vp;
  int i;

  for (i = 0; i < nx->nx_c; i++) {
    mntfs *m = nx->nx_v[i].n_mnt;
    if (m)
      free_mntfs(m);
  }

  XFREE(nx->nx_v);
  XFREE(nx);
}
