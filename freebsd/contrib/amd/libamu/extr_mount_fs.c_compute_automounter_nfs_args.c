
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct nfs_common_args {int flags; } ;
struct TYPE_7__ {int flags; scalar_t__ symttl; } ;
typedef TYPE_1__ nfs_args_t ;
struct TYPE_8__ {int mnt_dir; } ;
typedef TYPE_2__ mntent_t ;
typedef int a ;


 int MNT2_GEN_OPT_AUTOMNTFS ;
 int MNT2_NFS_OPT_AUTO ;
 int MNT2_NFS_OPT_DUMBTIMR ;
 int MNT2_NFS_OPT_IGNORE ;
 int MNT2_NFS_OPT_RESVPORT ;
 int MNT2_NFS_OPT_SYMTTL ;
 int XLOG_INFO ;
 int compute_nfs_attrcache_flags (struct nfs_common_args*,TYPE_2__*) ;
 int get_nfs_common_args (TYPE_1__*,struct nfs_common_args) ;
 int memset (struct nfs_common_args*,int ,int) ;
 int plog (int ,char*,...) ;

void
compute_automounter_nfs_args(nfs_args_t *nap, mntent_t *mntp)
{
  struct nfs_common_args a;
  memset(&a, 0, sizeof(a));
  a.flags = nap->flags;
  compute_nfs_attrcache_flags(&a, mntp);
  get_nfs_common_args(nap, a);
}
