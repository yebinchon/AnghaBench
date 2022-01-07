
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opt_tab {int flag; scalar_t__ opt; } ;
typedef int mntent_t ;


 int MNT2_GEN_OPT_AUTOMOUNTED ;
 int MNT2_GEN_OPT_NEWTYPE ;
 scalar_t__ amu_hasmntopt (int *,scalar_t__) ;
 struct opt_tab* mnt_flags ;

int
compute_mount_flags(mntent_t *mntp)
{
  struct opt_tab *opt;
  int flags = 0;
  for (opt = mnt_flags; opt->opt; opt++) {
    flags |= amu_hasmntopt(mntp, opt->opt) ? opt->flag : 0;
  }

  return flags;
}
