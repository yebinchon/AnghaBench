
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dentry {int d_inode; } ;
struct TYPE_4__ {TYPE_1__* sysctl; } ;
struct TYPE_3__ {int unregistering; } ;


 TYPE_2__* PROC_I (int ) ;

__attribute__((used)) static int proc_sys_delete(struct dentry *dentry)
{
 return !!PROC_I(dentry->d_inode)->sysctl->unregistering;
}
