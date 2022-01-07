
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* am_child; struct TYPE_8__* am_osib; TYPE_2__* am_al; int am_path; } ;
typedef TYPE_3__ am_node ;
struct TYPE_7__ {TYPE_1__* al_mnt; } ;
struct TYPE_6__ {int mf_flags; int mf_mount; } ;


 int MFF_MOUNTED ;
 scalar_t__ STREQ (int ,char*) ;

__attribute__((used)) static am_node *
find_ap_recursive(char *dir, am_node *mp)
{
  if (mp) {
    am_node *mp2;
    if (STREQ(mp->am_path, dir))
      return mp;

    if ((mp->am_al->al_mnt->mf_flags & MFF_MOUNTED) &&
 STREQ(mp->am_al->al_mnt->mf_mount, dir))
      return mp;

    mp2 = find_ap_recursive(dir, mp->am_osib);
    if (mp2)
      return mp2;
    return find_ap_recursive(dir, mp->am_child);
  }

  return 0;
}
