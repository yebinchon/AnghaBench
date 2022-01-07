
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* mnt_time; struct TYPE_4__* mnt_opts; struct TYPE_4__* mnt_type; struct TYPE_4__* mnt_dir; struct TYPE_4__* mnt_fsname; } ;
typedef TYPE_1__ mntent_t ;


 int XFREE (TYPE_1__*) ;

void
mnt_free(mntent_t *mp)
{
  XFREE(mp->mnt_fsname);
  XFREE(mp->mnt_dir);
  XFREE(mp->mnt_type);
  XFREE(mp->mnt_opts);







  XFREE(mp);
}
