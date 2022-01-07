
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {struct super_block* mnt_sb; } ;
struct super_block {int s_blocksize; } ;
struct kstat {int blocks; int blksize; int size; } ;
struct dentry {int d_inode; } ;


 int generic_fillattr (int ,struct kstat*) ;
 int sysv_nblocks (struct super_block*,int ) ;

int sysv_getattr(struct vfsmount *mnt, struct dentry *dentry, struct kstat *stat)
{
 struct super_block *s = mnt->mnt_sb;
 generic_fillattr(dentry->d_inode, stat);
 stat->blocks = (s->s_blocksize / 512) * sysv_nblocks(s, stat->size);
 stat->blksize = s->s_blocksize;
 return 0;
}
