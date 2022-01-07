
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v9fs_session_info {int dfltgid; int dfltuid; } ;
struct super_block {struct v9fs_session_info* s_fs_info; } ;
struct p9_wstat {int length; int extension; int mode; int n_gid; int n_uid; int mtime; int atime; } ;
struct TYPE_6__ {int tv_sec; } ;
struct TYPE_5__ {int tv_sec; } ;
struct TYPE_4__ {int tv_sec; } ;
struct inode {int i_nlink; int i_blocks; scalar_t__ i_rdev; int i_mode; int i_gid; int i_uid; TYPE_3__ i_ctime; TYPE_2__ i_mtime; TYPE_1__ i_atime; } ;
typedef int ext ;


 scalar_t__ MKDEV (int,int) ;
 int P9_DEBUG_ERROR ;
 int P9_DPRINTK (int ,char*,char,int ) ;
 int S_IFBLK ;
 int S_IFCHR ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 int i_size_read (struct inode*) ;
 int i_size_write (struct inode*,int ) ;
 int init_special_inode (struct inode*,int ,scalar_t__) ;
 int p9mode2unixmode (struct v9fs_session_info*,int ) ;
 int sscanf (char*,char*,char*,int*,int*) ;
 int strncpy (char*,int ,int) ;
 scalar_t__ v9fs_extended (struct v9fs_session_info*) ;

void
v9fs_stat2inode(struct p9_wstat *stat, struct inode *inode,
 struct super_block *sb)
{
 char ext[32];
 struct v9fs_session_info *v9ses = sb->s_fs_info;

 inode->i_nlink = 1;

 inode->i_atime.tv_sec = stat->atime;
 inode->i_mtime.tv_sec = stat->mtime;
 inode->i_ctime.tv_sec = stat->mtime;

 inode->i_uid = v9ses->dfltuid;
 inode->i_gid = v9ses->dfltgid;

 if (v9fs_extended(v9ses)) {
  inode->i_uid = stat->n_uid;
  inode->i_gid = stat->n_gid;
 }

 inode->i_mode = p9mode2unixmode(v9ses, stat->mode);
 if ((S_ISBLK(inode->i_mode)) || (S_ISCHR(inode->i_mode))) {
  char type = 0;
  int major = -1;
  int minor = -1;

  strncpy(ext, stat->extension, sizeof(ext));
  sscanf(ext, "%c %u %u", &type, &major, &minor);
  switch (type) {
  case 'c':
   inode->i_mode &= ~S_IFBLK;
   inode->i_mode |= S_IFCHR;
   break;
  case 'b':
   break;
  default:
   P9_DPRINTK(P9_DEBUG_ERROR,
    "Unknown special type %c %s\n", type,
    stat->extension);
  };
  inode->i_rdev = MKDEV(major, minor);
  init_special_inode(inode, inode->i_mode, inode->i_rdev);
 } else
  inode->i_rdev = 0;

 i_size_write(inode, stat->length);


 inode->i_blocks = (i_size_read(inode) + 512 - 1) >> 9;
}
