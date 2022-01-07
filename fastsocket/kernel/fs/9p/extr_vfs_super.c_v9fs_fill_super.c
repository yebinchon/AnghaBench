
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {scalar_t__ maxdata; } ;
struct super_block {int s_blocksize_bits; int s_blocksize; int s_flags; int * s_op; int s_magic; int s_maxbytes; } ;


 int MAX_LFS_FILESIZE ;
 int MS_ACTIVE ;
 int MS_DIRSYNC ;
 int MS_NOATIME ;
 int MS_SYNCHRONOUS ;
 int V9FS_MAGIC ;
 int fls (scalar_t__) ;
 int save_mount_options (struct super_block*,void*) ;
 int v9fs_super_ops ;

__attribute__((used)) static void
v9fs_fill_super(struct super_block *sb, struct v9fs_session_info *v9ses,
  int flags, void *data)
{
 sb->s_maxbytes = MAX_LFS_FILESIZE;
 sb->s_blocksize_bits = fls(v9ses->maxdata - 1);
 sb->s_blocksize = 1 << sb->s_blocksize_bits;
 sb->s_magic = V9FS_MAGIC;
 sb->s_op = &v9fs_super_ops;

 sb->s_flags = flags | MS_ACTIVE | MS_SYNCHRONOUS | MS_DIRSYNC |
     MS_NOATIME;

 save_mount_options(sb, data);
}
