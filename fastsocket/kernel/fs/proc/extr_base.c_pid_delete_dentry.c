
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dentry {int d_inode; } ;
struct TYPE_4__ {TYPE_1__* tasks; } ;
struct TYPE_3__ {int first; } ;


 size_t PIDTYPE_PID ;
 TYPE_2__* proc_pid (int ) ;

__attribute__((used)) static int pid_delete_dentry(struct dentry * dentry)
{




 return !proc_pid(dentry->d_inode)->tasks[PIDTYPE_PID].first;
}
