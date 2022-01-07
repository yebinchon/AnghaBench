
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct treepath {int dummy; } ;
struct reiserfs_transaction_handle {int t_trans_id; } ;
struct inode {int dummy; } ;
typedef int sector_t ;
typedef int b_blocknr_t ;


 int BUG_ON (int) ;
 int GET_BLOCK_NO_IMUX ;
 int reiserfs_new_unf_blocknrs (struct reiserfs_transaction_handle*,struct inode*,int *,struct treepath*,int ) ;
 int reiserfs_new_unf_blocknrs2 (struct reiserfs_transaction_handle*,struct inode*,int *,struct treepath*,int ) ;

__attribute__((used)) static inline int _allocate_block(struct reiserfs_transaction_handle *th,
      sector_t block,
      struct inode *inode,
      b_blocknr_t * allocated_block_nr,
      struct treepath *path, int flags)
{
 BUG_ON(!th->t_trans_id);







 return reiserfs_new_unf_blocknrs(th, inode, allocated_block_nr, path,
      block);
}
