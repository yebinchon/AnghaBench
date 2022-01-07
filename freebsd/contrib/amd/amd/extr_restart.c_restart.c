
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* mnt; struct TYPE_6__* mnext; } ;
typedef TYPE_1__ mntlist ;
struct TYPE_7__ {int mnt_type; int mnt_fsname; } ;
typedef TYPE_2__ mntent_t ;
typedef int am_ops ;


 int MNTTAB_TYPE_NFS ;
 scalar_t__ STREQ (int ,int ) ;
 int amfs_link_ops ;
 int free_mntlist (TYPE_1__*) ;
 int mnttab_file_name ;
 int * ops_search (int ) ;
 TYPE_1__* read_mtab (char*,int ) ;
 int restart_fake_mntfs (TYPE_2__*,int *) ;
 char* strchr (int ,char) ;
 scalar_t__ strstr (char*,char*) ;

void
restart(void)
{
  mntlist *ml, *mlp;





  for (mlp = ml = read_mtab("restart", mnttab_file_name);
       mlp;
       mlp = mlp->mnext) {
    mntent_t *me = mlp->mnt;
    am_ops *fs_ops = ((void*)0);

    if (STREQ(me->mnt_type, MNTTAB_TYPE_NFS)) {







      char *colon = strchr(me->mnt_fsname, ':');
      if (colon && strstr(colon, "(pid"))
 continue;
    }


    fs_ops = ops_search(me->mnt_type);





    if (!fs_ops)
      fs_ops = &amfs_link_ops;

    restart_fake_mntfs(me, fs_ops);
  }




  free_mntlist(ml);
}
