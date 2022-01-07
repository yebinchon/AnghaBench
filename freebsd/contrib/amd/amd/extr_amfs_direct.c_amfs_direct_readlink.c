
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ am_path; TYPE_1__* am_al; int am_child; } ;
typedef TYPE_2__ am_node ;
struct TYPE_14__ {int mf_private; } ;
struct TYPE_12__ {TYPE_5__* al_mnt; } ;


 int ENOENT ;
 scalar_t__ Finishing ;
 int VLOOK_CREATE ;
 scalar_t__ amd_state ;
 TYPE_2__* amfs_generic_lookup_child (TYPE_2__*,scalar_t__,int*,int ) ;
 TYPE_2__* amfs_generic_mount_child (TYPE_2__*,int*) ;
 int amfs_mkcacheref (TYPE_5__*) ;
 int new_ttl (TYPE_2__*) ;
 TYPE_2__* next_nonerror_node (int ) ;

__attribute__((used)) static am_node *
amfs_direct_readlink(am_node *mp, int *error_return)
{
  am_node *xp;
  int rc = 0;

  xp = next_nonerror_node(mp->am_child);
  if (!xp) {
    if (!mp->am_al->al_mnt->mf_private)
      amfs_mkcacheref(mp->am_al->al_mnt);
    xp = amfs_generic_lookup_child(mp, mp->am_path + 1, &rc, VLOOK_CREATE);
    if (xp && rc < 0)
      xp = amfs_generic_mount_child(xp, &rc);
  }
  if (xp) {
    new_ttl(xp);
    return xp;
  }
  if (amd_state == Finishing)
    rc = ENOENT;
  *error_return = rc;
  return 0;
}
