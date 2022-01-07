
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_root; struct super_block* mnt_sb; } ;
struct super_block {int dummy; } ;


 int WARN_ON (int ) ;
 int count_mnt_writers (struct vfsmount*) ;
 int deactivate_super (struct super_block*) ;
 int dput (int ) ;
 int free_vfsmnt (struct vfsmount*) ;

__attribute__((used)) static inline void __mntput(struct vfsmount *mnt)
{
 struct super_block *sb = mnt->mnt_sb;
 WARN_ON(count_mnt_writers(mnt));
 dput(mnt->mnt_root);
 free_vfsmnt(mnt);
 deactivate_super(sb);
}
