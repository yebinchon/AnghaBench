
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {TYPE_2__* s_root; } ;
struct TYPE_4__ {char name_check; } ;
struct TYPE_6__ {TYPE_1__ options; } ;
struct TYPE_5__ {int * d_op; } ;


 TYPE_3__* MSDOS_SB (struct super_block*) ;
 int fat_fill_super (struct super_block*,void*,int,int *,int) ;
 int vfat_ci_dentry_ops ;
 int vfat_dentry_ops ;
 int vfat_dir_inode_operations ;

__attribute__((used)) static int vfat_fill_super(struct super_block *sb, void *data, int silent)
{
 int res;

 res = fat_fill_super(sb, data, silent, &vfat_dir_inode_operations, 1);
 if (res)
  return res;

 if (MSDOS_SB(sb)->options.name_check != 's')
  sb->s_root->d_op = &vfat_ci_dentry_ops;
 else
  sb->s_root->d_op = &vfat_dentry_ops;

 return 0;
}
