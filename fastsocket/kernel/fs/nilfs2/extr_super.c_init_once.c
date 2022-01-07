
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_inode_info {int vfs_inode; int i_bmap_union; struct nilfs_bmap* i_bmap; int i_btnode_cache; int xattr_sem; int i_dirty; } ;
struct nilfs_bmap {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_rwsem (int *) ;
 int inode_init_once (int *) ;
 int nilfs_btnode_cache_init_once (int *) ;

__attribute__((used)) static void init_once(void *obj)
{
 struct nilfs_inode_info *ii = obj;

 INIT_LIST_HEAD(&ii->i_dirty);



 nilfs_btnode_cache_init_once(&ii->i_btnode_cache);
 ii->i_bmap = (struct nilfs_bmap *)&ii->i_bmap_union;
 inode_init_once(&ii->vfs_inode);
}
