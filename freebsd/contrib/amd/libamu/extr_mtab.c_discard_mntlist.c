
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mnt; struct TYPE_4__* mnext; } ;
typedef TYPE_1__ mntlist ;


 int XFREE (TYPE_1__*) ;
 int mnt_free (scalar_t__) ;

void
discard_mntlist(mntlist *mp)
{
  mntlist *mp2;

  while ((mp2 = mp)) {
    mp = mp->mnext;
    if (mp2->mnt)
      mnt_free(mp2->mnt);
    XFREE(mp2);
  }
}
