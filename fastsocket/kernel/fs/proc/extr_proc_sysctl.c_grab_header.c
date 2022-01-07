
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ctl_table_header {int dummy; } ;
struct TYPE_2__ {scalar_t__ sysctl; } ;


 TYPE_1__* PROC_I (struct inode*) ;
 struct ctl_table_header* sysctl_head_grab (scalar_t__) ;
 struct ctl_table_header* sysctl_head_next (int *) ;

__attribute__((used)) static struct ctl_table_header *grab_header(struct inode *inode)
{
 if (PROC_I(inode)->sysctl)
  return sysctl_head_grab(PROC_I(inode)->sysctl);
 else
  return sysctl_head_next(((void*)0));
}
