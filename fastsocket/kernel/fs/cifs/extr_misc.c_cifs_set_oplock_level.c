
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifsInodeInfo {int clientCanCacheAll; int clientCanCacheRead; int vfs_inode; } ;
typedef int __u32 ;


 int OPLOCK_EXCLUSIVE ;
 int OPLOCK_READ ;
 int cFYI (int,char*,int *) ;

void cifs_set_oplock_level(struct cifsInodeInfo *cinode, __u32 oplock)
{
 oplock &= 0xF;

 if (oplock == OPLOCK_EXCLUSIVE) {
  cinode->clientCanCacheAll = 1;
  cinode->clientCanCacheRead = 1;
  cFYI(1, "Exclusive Oplock granted on inode %p",
       &cinode->vfs_inode);
 } else if (oplock == OPLOCK_READ) {
  cinode->clientCanCacheAll = 0;
  cinode->clientCanCacheRead = 1;
  cFYI(1, "Level II Oplock granted on inode %p",
      &cinode->vfs_inode);
 } else {
  cinode->clientCanCacheAll = 0;
  cinode->clientCanCacheRead = 0;
 }
}
