
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {void* s_fs_info; } ;
struct nilfs_super_data {scalar_t__ sbi; } ;



__attribute__((used)) static int nilfs_test_bdev_super(struct super_block *s, void *data)
{
 struct nilfs_super_data *sd = data;

 return sd->sbi && s->s_fs_info == (void *)sd->sbi;
}
