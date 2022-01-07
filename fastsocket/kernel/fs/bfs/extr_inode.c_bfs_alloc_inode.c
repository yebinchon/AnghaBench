
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct bfs_inode_info {struct inode vfs_inode; } ;


 int GFP_KERNEL ;
 int bfs_inode_cachep ;
 struct bfs_inode_info* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static struct inode *bfs_alloc_inode(struct super_block *sb)
{
 struct bfs_inode_info *bi;
 bi = kmem_cache_alloc(bfs_inode_cachep, GFP_KERNEL);
 if (!bi)
  return ((void*)0);
 return &bi->vfs_inode;
}
