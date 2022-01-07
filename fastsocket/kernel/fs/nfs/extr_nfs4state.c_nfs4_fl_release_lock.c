
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int owner; } ;
struct TYPE_4__ {TYPE_1__ nfs4_fl; } ;
struct file_lock {TYPE_2__ fl_u; } ;


 int nfs4_put_lock_state (int ) ;

__attribute__((used)) static void nfs4_fl_release_lock(struct file_lock *fl)
{
 nfs4_put_lock_state(fl->fl_u.nfs4_fl.owner);
}
