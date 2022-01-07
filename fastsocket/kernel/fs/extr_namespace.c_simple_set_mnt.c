
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_root; struct super_block* mnt_sb; } ;
struct super_block {int s_root; } ;


 int dget (int ) ;

void simple_set_mnt(struct vfsmount *mnt, struct super_block *sb)
{
 mnt->mnt_sb = sb;
 mnt->mnt_root = dget(sb->s_root);
}
