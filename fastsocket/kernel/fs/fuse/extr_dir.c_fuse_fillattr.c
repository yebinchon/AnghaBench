
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int tv_nsec; int tv_sec; } ;
struct TYPE_7__ {int tv_nsec; int tv_sec; } ;
struct TYPE_6__ {int tv_nsec; int tv_sec; } ;
struct kstat {int mode; int blksize; int blocks; int size; TYPE_4__ ctime; TYPE_3__ mtime; TYPE_2__ atime; int rdev; int gid; int uid; int nlink; int ino; int dev; } ;
struct inode {int i_mode; int i_blkbits; int i_rdev; TYPE_1__* i_sb; } ;
struct fuse_attr {int mode; int blocks; int size; int ctimensec; int ctime; int mtimensec; int mtime; int atimensec; int atime; int gid; int uid; int nlink; int ino; } ;
struct TYPE_5__ {int s_dev; } ;


 int S_IFMT ;

__attribute__((used)) static void fuse_fillattr(struct inode *inode, struct fuse_attr *attr,
     struct kstat *stat)
{
 stat->dev = inode->i_sb->s_dev;
 stat->ino = attr->ino;
 stat->mode = (inode->i_mode & S_IFMT) | (attr->mode & 07777);
 stat->nlink = attr->nlink;
 stat->uid = attr->uid;
 stat->gid = attr->gid;
 stat->rdev = inode->i_rdev;
 stat->atime.tv_sec = attr->atime;
 stat->atime.tv_nsec = attr->atimensec;
 stat->mtime.tv_sec = attr->mtime;
 stat->mtime.tv_nsec = attr->mtimensec;
 stat->ctime.tv_sec = attr->ctime;
 stat->ctime.tv_nsec = attr->ctimensec;
 stat->size = attr->size;
 stat->blocks = attr->blocks;
 stat->blksize = (1 << inode->i_blkbits);
}
