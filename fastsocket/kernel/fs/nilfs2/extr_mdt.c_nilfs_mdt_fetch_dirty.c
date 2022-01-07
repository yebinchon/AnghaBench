
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_inode_info {int i_state; int i_bmap; } ;
struct inode {int dummy; } ;


 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int NILFS_I_DIRTY ;
 scalar_t__ nilfs_bmap_test_and_clear_dirty (int ) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

int nilfs_mdt_fetch_dirty(struct inode *inode)
{
 struct nilfs_inode_info *ii = NILFS_I(inode);

 if (nilfs_bmap_test_and_clear_dirty(ii->i_bmap)) {
  set_bit(NILFS_I_DIRTY, &ii->i_state);
  return 1;
 }
 return test_bit(NILFS_I_DIRTY, &ii->i_state);
}
