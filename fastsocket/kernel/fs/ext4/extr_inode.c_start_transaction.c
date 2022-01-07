
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
typedef int handle_t ;


 int IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int blocks_for_truncate (struct inode*) ;
 int * ext4_journal_start (struct inode*,int ) ;
 int ext4_std_error (int ,int ) ;

__attribute__((used)) static handle_t *start_transaction(struct inode *inode)
{
 handle_t *result;

 result = ext4_journal_start(inode, blocks_for_truncate(inode));
 if (!IS_ERR(result))
  return result;

 ext4_std_error(inode->i_sb, PTR_ERR(result));
 return result;
}
