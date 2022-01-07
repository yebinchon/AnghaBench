
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_nlink; int i_mode; } ;


 scalar_t__ S_ISDIR (int ) ;

__attribute__((used)) static inline int inode_is_unlinkable(struct inode *inode)
{
 if (S_ISDIR(inode->i_mode)) {
  if (inode->i_nlink == 2)
   return 1;
  return 0;
 }

 if (inode->i_nlink == 1)
  return 1;
 return 0;
}
