
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {unsigned long long i_ino; int i_mode; int i_nlink; unsigned long long i_size; unsigned long long i_blocks; int i_ctime; int i_mtime; int i_atime; int i_gid; int i_uid; } ;


 int stat_file (char*,unsigned long long*,int*,int*,int *,int *,unsigned long long*,int *,int *,int *,int*,unsigned long long*,int) ;

__attribute__((used)) static int read_name(struct inode *ino, char *name)
{





 int err;
 int i_mode, i_nlink, i_blksize;
 unsigned long long i_size;
 unsigned long long i_ino;
 unsigned long long i_blocks;

 err = stat_file(name, &i_ino, &i_mode, &i_nlink, &ino->i_uid,
   &ino->i_gid, &i_size, &ino->i_atime, &ino->i_mtime,
   &ino->i_ctime, &i_blksize, &i_blocks, -1);
 if (err)
  return err;

 ino->i_ino = i_ino;
 ino->i_mode = i_mode;
 ino->i_nlink = i_nlink;
 ino->i_size = i_size;
 ino->i_blocks = i_blocks;
 return 0;
}
