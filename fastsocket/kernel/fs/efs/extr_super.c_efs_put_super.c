
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int * s_fs_info; } ;


 int kfree (int *) ;

__attribute__((used)) static void efs_put_super(struct super_block *s)
{
 kfree(s->s_fs_info);
 s->s_fs_info = ((void*)0);
}
