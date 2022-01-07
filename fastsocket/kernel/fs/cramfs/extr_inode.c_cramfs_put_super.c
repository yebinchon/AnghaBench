
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int * s_fs_info; } ;


 int kfree (int *) ;

__attribute__((used)) static void cramfs_put_super(struct super_block *sb)
{
 kfree(sb->s_fs_info);
 sb->s_fs_info = ((void*)0);
}
