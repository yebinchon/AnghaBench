
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int (* sb_kern_mount ) (struct super_block*,int,void*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct super_block*,int,void*) ;

int security_sb_kern_mount(struct super_block *sb, int flags, void *data)
{
 return security_ops->sb_kern_mount(sb, flags, data);
}
