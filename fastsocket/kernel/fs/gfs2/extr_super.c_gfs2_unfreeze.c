
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_fs_info; } ;


 int gfs2_unfreeze_fs (int ) ;

__attribute__((used)) static int gfs2_unfreeze(struct super_block *sb)
{
 gfs2_unfreeze_fs(sb->s_fs_info);
 return 0;
}
