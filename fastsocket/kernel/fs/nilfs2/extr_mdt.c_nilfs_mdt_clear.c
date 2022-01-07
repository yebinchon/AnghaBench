
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_inode_info {int i_btnode_cache; int i_bmap; } ;
struct inode {int i_mapping; } ;


 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int invalidate_mapping_pages (int ,int ,int) ;
 int nilfs_bmap_clear (int ) ;
 int nilfs_btnode_cache_clear (int *) ;
 int truncate_inode_pages (int ,int ) ;

void nilfs_mdt_clear(struct inode *inode)
{
 struct nilfs_inode_info *ii = NILFS_I(inode);

 invalidate_mapping_pages(inode->i_mapping, 0, -1);
 truncate_inode_pages(inode->i_mapping, 0);

 nilfs_bmap_clear(ii->i_bmap);
 nilfs_btnode_cache_clear(&ii->i_btnode_cache);
}
