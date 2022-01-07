
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {void* s_fs_info; } ;



__attribute__((used)) static int proc_test_super(struct super_block *sb, void *data)
{
 return sb->s_fs_info == data;
}
