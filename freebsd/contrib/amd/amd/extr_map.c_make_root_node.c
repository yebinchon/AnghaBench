
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {TYPE_2__* mf_ops; int mf_error; } ;
typedef TYPE_3__ mntfs ;
typedef int am_opts ;
struct TYPE_15__ {TYPE_1__* am_al; } ;
struct TYPE_13__ {int (* mount_fs ) (TYPE_4__*,TYPE_3__*) ;int (* fs_init ) (TYPE_3__*) ;} ;
struct TYPE_12__ {TYPE_3__* al_mnt; } ;


 char* ROOT_MAP ;
 int amfs_root_ops ;
 TYPE_4__* exported_ap_alloc () ;
 TYPE_3__* find_mntfs (int *,int *,char*,char*,char*,char*,char*) ;
 int free_mntfs (TYPE_3__*) ;
 int init_map (TYPE_4__*,char*) ;
 TYPE_4__* root_node ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_4__*,TYPE_3__*) ;

void
make_root_node(void)
{
  mntfs *root_mf;
  char *rootmap = ROOT_MAP;
  root_node = exported_ap_alloc();




  init_map(root_node, "");




  root_mf = find_mntfs(&amfs_root_ops, (am_opts *) ((void*)0), "", rootmap, "", "", "");




  free_mntfs(root_node->am_al->al_mnt);
  root_node->am_al->al_mnt = root_mf;




  if (root_mf->mf_ops->fs_init)
    (*root_mf->mf_ops->fs_init) (root_mf);




  root_mf->mf_error = root_mf->mf_ops->mount_fs(root_node, root_mf);
}
