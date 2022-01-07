
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifsInodeInfo {int lockList; int vfs_inode; } ;


 int INIT_LIST_HEAD (int *) ;
 int inode_init_once (int *) ;

__attribute__((used)) static void
cifs_init_once(void *inode)
{
 struct cifsInodeInfo *cifsi = inode;

 inode_init_once(&cifsi->vfs_inode);
 INIT_LIST_HEAD(&cifsi->lockList);
}
