
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ opaque_t ;
struct TYPE_9__ {int na_fileid; } ;
struct TYPE_13__ {int am_gen; TYPE_4__* am_al; TYPE_1__ am_fattr; } ;
typedef TYPE_5__ am_node ;
struct TYPE_12__ {TYPE_3__* al_mnt; } ;
struct TYPE_11__ {TYPE_2__* mf_ops; } ;
struct TYPE_10__ {int (* mount_child ) (TYPE_5__*,int*) ;TYPE_5__* (* lookup_child ) (TYPE_5__*,char*,int*,int ) ;} ;


 int VLOOK_CREATE ;
 int XLOG_ERROR ;
 int errno ;
 int plog (int ,char*,char*) ;
 TYPE_5__* stub1 (TYPE_5__*,char*,int*,int ) ;
 int stub2 (TYPE_5__*,int*) ;

int
mount_auto_node(char *dir, opaque_t arg)
{
  int error = 0;
  am_node *mp = (am_node *) arg;
  am_node *new_mp;

  new_mp = mp->am_al->al_mnt->mf_ops->lookup_child(mp, dir, &error, VLOOK_CREATE);
  if (new_mp && error < 0) {




    new_mp->am_gen = new_mp->am_fattr.na_fileid = 1;

    (void) mp->am_al->al_mnt->mf_ops->mount_child(new_mp, &error);
  }

  if (error > 0) {
    errno = error;
    plog(XLOG_ERROR, "Could not mount %s: %m", dir);
  }
  return error;
}
