
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int handle_t ;


 scalar_t__ EXT4_RESERVE_TRANS_BLOCKS ;
 int blocks_for_truncate (struct inode*) ;
 scalar_t__ ext4_handle_has_enough_credits (int *,scalar_t__) ;
 int ext4_handle_valid (int *) ;
 int ext4_journal_extend (int *,int ) ;

__attribute__((used)) static int try_to_extend_transaction(handle_t *handle, struct inode *inode)
{
 if (!ext4_handle_valid(handle))
  return 0;
 if (ext4_handle_has_enough_credits(handle, EXT4_RESERVE_TRANS_BLOCKS+1))
  return 0;
 if (!ext4_journal_extend(handle, blocks_for_truncate(inode)))
  return 0;
 return 1;
}
