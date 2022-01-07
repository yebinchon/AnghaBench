
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int owner; int list; } ;
struct TYPE_4__ {TYPE_1__ nfs_fl; } ;
struct file_lock {TYPE_2__ fl_u; } ;


 int list_del (int *) ;
 int nlm_put_lockowner (int ) ;

__attribute__((used)) static void nlmclnt_locks_release_private(struct file_lock *fl)
{
 list_del(&fl->fl_u.nfs_fl.list);
 nlm_put_lockowner(fl->fl_u.nfs_fl.owner);
}
