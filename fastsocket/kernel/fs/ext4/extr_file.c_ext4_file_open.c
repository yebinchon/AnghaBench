
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {int mnt_mountpoint; int mnt_parent; } ;
struct super_block {int s_flags; int s_dirt; } ;
struct path {int dentry; int mnt; } ;
struct inode {struct super_block* i_sb; } ;
struct TYPE_3__ {struct vfsmount* mnt; } ;
struct file {TYPE_1__ f_path; } ;
struct ext4_sb_info {int s_mount_flags; TYPE_2__* s_es; } ;
typedef int buf ;
struct TYPE_4__ {int s_last_mounted; } ;


 int EXT4_MF_MNTDIR_SAMPLED ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int IS_ERR (char*) ;
 int MS_RDONLY ;
 char* d_path (struct path*,char*,int) ;
 int generic_file_open (struct inode*,struct file*) ;
 int memcpy (int ,char*,int) ;
 int memset (char*,int ,int) ;
 int path_get (struct path*) ;
 int path_put (struct path*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ext4_file_open(struct inode * inode, struct file * filp)
{
 struct super_block *sb = inode->i_sb;
 struct ext4_sb_info *sbi = EXT4_SB(inode->i_sb);
 struct vfsmount *mnt = filp->f_path.mnt;
 struct path path;
 char buf[64], *cp;

 if (unlikely(!(sbi->s_mount_flags & EXT4_MF_MNTDIR_SAMPLED) &&
       !(sb->s_flags & MS_RDONLY))) {
  sbi->s_mount_flags |= EXT4_MF_MNTDIR_SAMPLED;






  memset(buf, 0, sizeof(buf));
  path.mnt = mnt->mnt_parent;
  path.dentry = mnt->mnt_mountpoint;
  path_get(&path);
  cp = d_path(&path, buf, sizeof(buf));
  path_put(&path);
  if (!IS_ERR(cp)) {
   memcpy(sbi->s_es->s_last_mounted, cp,
          sizeof(sbi->s_es->s_last_mounted));
   sb->s_dirt = 1;
  }
 }
 return generic_file_open(inode, filp);
}
