
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {char* s_options; } ;


 int kfree (char*) ;
 int rcu_assign_pointer (char*,char*) ;
 int synchronize_rcu () ;

void replace_mount_options(struct super_block *sb, char *options)
{
 char *old = sb->s_options;
 rcu_assign_pointer(sb->s_options, options);
 if (old) {
  synchronize_rcu();
  kfree(old);
 }
}
