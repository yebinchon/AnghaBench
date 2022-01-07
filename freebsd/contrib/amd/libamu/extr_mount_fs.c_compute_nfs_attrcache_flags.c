
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_common_args {int acregmin; int acregmax; int acdirmin; int acdirmax; int flags; } ;
typedef int mntent_t ;


 int MNT2_NFS_OPT_ACDIRMAX ;
 int MNT2_NFS_OPT_ACDIRMIN ;
 int MNT2_NFS_OPT_ACREGMAX ;
 int MNT2_NFS_OPT_ACREGMIN ;
 int MNT2_NFS_OPT_NOAC ;
 int MNTTAB_OPT_ACDIRMAX ;
 int MNTTAB_OPT_ACDIRMIN ;
 int MNTTAB_OPT_ACREGMAX ;
 int MNTTAB_OPT_ACREGMIN ;
 int MNTTAB_OPT_ACTIMEO ;
 int MNTTAB_OPT_NOAC ;
 int * amu_hasmntopt (int *,int ) ;
 int hasmntvalerr (int *,int ,int*) ;

__attribute__((used)) static void
compute_nfs_attrcache_flags(struct nfs_common_args *nap, mntent_t *mntp)
{
  int acval = 0;
  int err_acval = 1;
}
