
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ mf_private; } ;
typedef TYPE_2__ mntfs ;
typedef int mnt_map ;
struct TYPE_11__ {TYPE_1__* am_al; } ;
typedef TYPE_3__ am_node ;
struct TYPE_9__ {TYPE_2__* al_mnt; } ;


 int amfs_mkcacheref (TYPE_2__*) ;
 int create_amfs_union_node ;
 TYPE_3__* get_first_exported_ap (int*) ;
 TYPE_3__* get_next_exported_ap (int*) ;
 int mapc_keyiter (int *,int ,TYPE_3__*) ;

__attribute__((used)) static void
amfs_union_mounted(mntfs *mf)
{
  int index;
  am_node *mp;

  amfs_mkcacheref(mf);





  for (mp = get_first_exported_ap(&index);
       mp;
       mp = get_next_exported_ap(&index)) {
    if (mp->am_al->al_mnt == mf) {

      (void) mapc_keyiter((mnt_map *) mp->am_al->al_mnt->mf_private,
     create_amfs_union_node,
     mp);
      break;
    }
  }
}
