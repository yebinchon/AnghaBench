
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int mf_refc; int mf_flags; int mf_server; int * mf_ops; int mf_mount; } ;
typedef TYPE_1__ mntfs ;
typedef int am_opts ;
typedef int am_ops ;


 int FSRV_ISDOWN (int ) ;
 int MFF_MOUNTED ;
 int MFF_RESTART ;
 scalar_t__ STREQ (int ,char*) ;
 int amfs_error_ops ;
 TYPE_1__* find_mntfs (int *,int *,char*,char*,char*,char*,char*) ;
 int free_mntfs (TYPE_1__*) ;

mntfs *
realloc_mntfs(mntfs *mf, am_ops *ops, am_opts *mo, char *mp, char *info, char *auto_opts, char *mopts, char *remopts)
{
  mntfs *mf2;

  if (mf->mf_refc == 1 &&
      mf->mf_flags & MFF_RESTART &&
      STREQ(mf->mf_mount, mp)) {




    return mf;
  }





  if (mf->mf_ops != &amfs_error_ops &&
      (mf->mf_flags & MFF_MOUNTED) &&
      !FSRV_ISDOWN(mf->mf_server)) {
    return mf;
  }

  mf2 = find_mntfs(ops, mo, mp, info, auto_opts, mopts, remopts);
  free_mntfs(mf);
  return mf2;
}
