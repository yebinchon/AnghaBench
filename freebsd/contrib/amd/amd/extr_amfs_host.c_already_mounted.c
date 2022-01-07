
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* mnt; struct TYPE_5__* mnext; } ;
typedef TYPE_2__ mntlist ;
struct TYPE_4__ {int mnt_dir; } ;


 scalar_t__ STREQ (int ,char*) ;

__attribute__((used)) static int
already_mounted(mntlist *mlist, char *dir)
{
  mntlist *ml;

  for (ml = mlist; ml; ml = ml->mnext)
    if (STREQ(ml->mnt->mnt_dir, dir))
      return 1;
  return 0;
}
