
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_inode_info {int i_btnode_cache; int i_bmap; int i_state; int * i_bh; int i_dirty; } ;
struct inode {int dummy; } ;


 int BUG_ON (int) ;
 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int NILFS_I_BMAP ;
 int brelse (int *) ;
 int list_empty (int *) ;
 int nilfs_bmap_clear (int ) ;
 int nilfs_btnode_cache_clear (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void nilfs_clear_inode(struct inode *inode)
{
 struct nilfs_inode_info *ii = NILFS_I(inode);




 BUG_ON(!list_empty(&ii->i_dirty));
 brelse(ii->i_bh);
 ii->i_bh = ((void*)0);

 if (test_bit(NILFS_I_BMAP, &ii->i_state))
  nilfs_bmap_clear(ii->i_bmap);

 nilfs_btnode_cache_clear(&ii->i_btnode_cache);
}
