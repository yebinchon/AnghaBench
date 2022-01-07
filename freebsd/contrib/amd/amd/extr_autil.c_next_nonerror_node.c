
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ mf_error; int mf_flags; TYPE_1__* mf_server; } ;
typedef TYPE_3__ mntfs ;
struct TYPE_10__ {scalar_t__ am_error; struct TYPE_10__* am_osib; TYPE_2__* am_al; } ;
typedef TYPE_4__ am_node ;
struct TYPE_8__ {TYPE_3__* al_mnt; } ;
struct TYPE_7__ {int fs_flags; } ;


 int FSF_DOWN ;
 int MFF_MOUNTED ;

am_node *
next_nonerror_node(am_node *xp)
{
  mntfs *mf;







  while (xp &&
  (!(mf = xp->am_al->al_mnt) ||
   mf->mf_error != 0 ||
   xp->am_error != 0 ||
   !(mf->mf_flags & MFF_MOUNTED) ||
   (mf->mf_server->fs_flags & FSF_DOWN))
  )
    xp = xp->am_osib;

  return xp;
}
