
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; int i_sb; } ;


 int EIO ;
 int __ext4_error (int ,char const*,char*,int ) ;

__attribute__((used)) static int
mext_check_null_inode(struct inode *inode1, struct inode *inode2,
  const char *function)
{
 int ret = 0;

 if (inode1 == ((void*)0)) {
  __ext4_error(inode2->i_sb, function,
   "Both inodes should not be NULL: "
   "inode1 NULL inode2 %lu", inode2->i_ino);
  ret = -EIO;
 } else if (inode2 == ((void*)0)) {
  __ext4_error(inode1->i_sb, function,
   "Both inodes should not be NULL: "
   "inode1 %lu inode2 NULL", inode1->i_ino);
  ret = -EIO;
 }
 return ret;
}
