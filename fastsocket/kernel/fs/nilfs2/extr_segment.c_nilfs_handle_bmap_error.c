
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_ino; } ;


 int EINVAL ;
 int EIO ;
 int nilfs_error (struct super_block*,char const*,char*,int ) ;

__attribute__((used)) static int nilfs_handle_bmap_error(int err, const char *fname,
       struct inode *inode, struct super_block *sb)
{
 if (err == -EINVAL) {
  nilfs_error(sb, fname, "broken bmap (inode=%lu)\n",
       inode->i_ino);
  err = -EIO;
 }
 return err;
}
