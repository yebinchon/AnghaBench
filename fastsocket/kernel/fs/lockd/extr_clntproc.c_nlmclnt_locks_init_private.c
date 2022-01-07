
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nlm_host {int dummy; } ;
struct TYPE_4__ {int list; int owner; scalar_t__ state; } ;
struct TYPE_3__ {TYPE_2__ nfs_fl; } ;
struct file_lock {int * fl_ops; TYPE_1__ fl_u; int fl_owner; } ;


 int BUG_ON (int ) ;
 int INIT_LIST_HEAD (int *) ;
 int nlm_find_lockowner (struct nlm_host*,int ) ;
 int nlmclnt_lock_ops ;

__attribute__((used)) static void nlmclnt_locks_init_private(struct file_lock *fl, struct nlm_host *host)
{
 BUG_ON(fl->fl_ops != ((void*)0));
 fl->fl_u.nfs_fl.state = 0;
 fl->fl_u.nfs_fl.owner = nlm_find_lockowner(host, fl->fl_owner);
 INIT_LIST_HEAD(&fl->fl_u.nfs_fl.list);
 fl->fl_ops = &nlmclnt_lock_ops;
}
