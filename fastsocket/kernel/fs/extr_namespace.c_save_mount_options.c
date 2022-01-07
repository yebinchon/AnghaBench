
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_options; } ;


 int BUG_ON (int ) ;
 int GFP_KERNEL ;
 int kstrdup (char*,int ) ;
 int rcu_assign_pointer (int ,int ) ;

void save_mount_options(struct super_block *sb, char *options)
{
 BUG_ON(sb->s_options);
 rcu_assign_pointer(sb->s_options, kstrdup(options, GFP_KERNEL));
}
