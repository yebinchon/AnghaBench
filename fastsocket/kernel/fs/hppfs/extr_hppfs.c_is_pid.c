
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {scalar_t__ s_root; } ;
struct TYPE_2__ {int len; int * name; } ;
struct dentry {scalar_t__ d_parent; TYPE_1__ d_name; struct super_block* d_sb; } ;


 int isdigit (int ) ;

__attribute__((used)) static int is_pid(struct dentry *dentry)
{
 struct super_block *sb;
 int i;

 sb = dentry->d_sb;
 if (dentry->d_parent != sb->s_root)
  return 0;

 for (i = 0; i < dentry->d_name.len; i++) {
  if (!isdigit(dentry->d_name.name[i]))
   return 0;
 }
 return 1;
}
