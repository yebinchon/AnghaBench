
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct smb_inode_info {int oldmtime; int attr; } ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;
struct smb_fattr {scalar_t__ f_size; int attr; int f_atime; TYPE_1__ f_mtime; int f_blocks; int f_ctime; int f_gid; int f_uid; int f_nlink; int f_mode; } ;
struct inode {scalar_t__ i_size; int i_mode; TYPE_1__ i_mtime; int i_ino; int i_atime; int i_blocks; int i_ctime; int i_gid; int i_uid; int i_nlink; } ;
typedef scalar_t__ loff_t ;


 struct smb_inode_info* SMB_I (struct inode*) ;
 int S_ISDIR (int ) ;
 int VERBOSE (char*,int ,long,long,long,long) ;
 int invalidate_remote_inode (struct inode*) ;
 int jiffies ;

void
smb_set_inode_attr(struct inode *inode, struct smb_fattr *fattr)
{
 struct smb_inode_info *ei = SMB_I(inode);





 time_t last_time = inode->i_mtime.tv_sec;
 loff_t last_sz = inode->i_size;

 inode->i_mode = fattr->f_mode;
 inode->i_nlink = fattr->f_nlink;
 inode->i_uid = fattr->f_uid;
 inode->i_gid = fattr->f_gid;
 inode->i_ctime = fattr->f_ctime;
 inode->i_blocks = fattr->f_blocks;
 inode->i_size = fattr->f_size;
 inode->i_mtime = fattr->f_mtime;
 inode->i_atime = fattr->f_atime;
 ei->attr = fattr->attr;




 ei->oldmtime = jiffies;

 if (inode->i_mtime.tv_sec != last_time || inode->i_size != last_sz) {
  VERBOSE("%ld changed, old=%ld, new=%ld, oz=%ld, nz=%ld\n",
   inode->i_ino,
   (long) last_time, (long) inode->i_mtime.tv_sec,
   (long) last_sz, (long) inode->i_size);

  if (!S_ISDIR(inode->i_mode))
   invalidate_remote_inode(inode);
 }
}
