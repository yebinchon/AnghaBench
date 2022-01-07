
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_7__ {int tv_nsec; int tv_sec; } ;
struct TYPE_6__ {int tv_nsec; int tv_sec; } ;
struct TYPE_5__ {int tv_nsec; int tv_sec; } ;
struct inode {int i_mode; TYPE_4__* i_sb; int i_blkbits; TYPE_3__ i_ctime; TYPE_2__ i_mtime; TYPE_1__ i_atime; int i_blocks; int i_gid; int i_uid; int i_nlink; int i_ino; } ;
struct fuse_inode {int orig_i_mode; int orig_ino; int i_time; scalar_t__ attr_version; } ;
struct fuse_conn {int flags; scalar_t__ attr_version; } ;
struct fuse_attr {int mode; scalar_t__ blksize; int ino; int ctimensec; int ctime; int mtimensec; int mtime; int atimensec; int atime; int blocks; int gid; int uid; int nlink; } ;
struct TYPE_8__ {int s_blocksize_bits; } ;


 int FUSE_DEFAULT_PERMISSIONS ;
 int S_IFMT ;
 int S_ISVTX ;
 int fuse_squash_ino (int ) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int ilog2 (scalar_t__) ;

void fuse_change_attributes_common(struct inode *inode, struct fuse_attr *attr,
       u64 attr_valid)
{
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_inode *fi = get_fuse_inode(inode);

 fi->attr_version = ++fc->attr_version;
 fi->i_time = attr_valid;

 inode->i_ino = fuse_squash_ino(attr->ino);
 inode->i_mode = (inode->i_mode & S_IFMT) | (attr->mode & 07777);
 inode->i_nlink = attr->nlink;
 inode->i_uid = attr->uid;
 inode->i_gid = attr->gid;
 inode->i_blocks = attr->blocks;
 inode->i_atime.tv_sec = attr->atime;
 inode->i_atime.tv_nsec = attr->atimensec;
 inode->i_mtime.tv_sec = attr->mtime;
 inode->i_mtime.tv_nsec = attr->mtimensec;
 inode->i_ctime.tv_sec = attr->ctime;
 inode->i_ctime.tv_nsec = attr->ctimensec;

 if (attr->blksize != 0)
  inode->i_blkbits = ilog2(attr->blksize);
 else
  inode->i_blkbits = inode->i_sb->s_blocksize_bits;






 fi->orig_i_mode = inode->i_mode;
 if (!(fc->flags & FUSE_DEFAULT_PERMISSIONS))
  inode->i_mode &= ~S_ISVTX;

 fi->orig_ino = attr->ino;
}
