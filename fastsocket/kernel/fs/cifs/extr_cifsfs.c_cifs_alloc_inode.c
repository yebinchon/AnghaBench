
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_blkbits; } ;
struct cifsInodeInfo {int cifsAttrs; int delete_pending; int invalid_mapping; struct inode vfs_inode; int openFileList; scalar_t__ server_eof; scalar_t__ time; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int cifs_inode_cachep ;
 int cifs_set_oplock_level (struct cifsInodeInfo*,int ) ;
 struct cifsInodeInfo* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static struct inode *
cifs_alloc_inode(struct super_block *sb)
{
 struct cifsInodeInfo *cifs_inode;
 cifs_inode = kmem_cache_alloc(cifs_inode_cachep, GFP_KERNEL);
 if (!cifs_inode)
  return ((void*)0);
 cifs_inode->cifsAttrs = 0x20;
 cifs_inode->time = 0;



 cifs_set_oplock_level(cifs_inode, 0);
 cifs_inode->delete_pending = 0;
 cifs_inode->invalid_mapping = 0;
 cifs_inode->vfs_inode.i_blkbits = 14;
 cifs_inode->server_eof = 0;




 INIT_LIST_HEAD(&cifs_inode->openFileList);
 return &cifs_inode->vfs_inode;
}
