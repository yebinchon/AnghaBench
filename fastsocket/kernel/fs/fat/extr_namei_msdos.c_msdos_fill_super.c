
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {TYPE_1__* s_root; int s_flags; } ;
struct TYPE_2__ {int * d_op; } ;


 int MS_NOATIME ;
 int fat_fill_super (struct super_block*,void*,int,int *,int ) ;
 int msdos_dentry_operations ;
 int msdos_dir_inode_operations ;

__attribute__((used)) static int msdos_fill_super(struct super_block *sb, void *data, int silent)
{
 int res;

 res = fat_fill_super(sb, data, silent, &msdos_dir_inode_operations, 0);
 if (res)
  return res;

 sb->s_flags |= MS_NOATIME;
 sb->s_root->d_op = &msdos_dentry_operations;
 return 0;
}
