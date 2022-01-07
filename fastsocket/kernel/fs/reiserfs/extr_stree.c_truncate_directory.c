
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_transaction_handle {int t_trans_id; } ;
struct inode {int i_sb; scalar_t__ i_nlink; } ;


 int BUG_ON (int) ;
 int DOT_OFFSET ;
 int INODE_PKEY (struct inode*) ;
 int KEY_FORMAT_3_5 ;
 int SD_OFFSET ;
 int TYPE_DIRENTRY ;
 int TYPE_STAT_DATA ;
 int reiserfs_delete_solid_item (struct reiserfs_transaction_handle*,struct inode*,int ) ;
 int reiserfs_error (int ,char*,char*) ;
 int reiserfs_update_sd (struct reiserfs_transaction_handle*,struct inode*) ;
 int set_le_key_k_offset (int ,int ,int ) ;
 int set_le_key_k_type (int ,int ,int ) ;

__attribute__((used)) static void truncate_directory(struct reiserfs_transaction_handle *th,
          struct inode *inode)
{
 BUG_ON(!th->t_trans_id);
 if (inode->i_nlink)
  reiserfs_error(inode->i_sb, "vs-5655", "link count != 0");

 set_le_key_k_offset(KEY_FORMAT_3_5, INODE_PKEY(inode), DOT_OFFSET);
 set_le_key_k_type(KEY_FORMAT_3_5, INODE_PKEY(inode), TYPE_DIRENTRY);
 reiserfs_delete_solid_item(th, inode, INODE_PKEY(inode));
 reiserfs_update_sd(th, inode);
 set_le_key_k_offset(KEY_FORMAT_3_5, INODE_PKEY(inode), SD_OFFSET);
 set_le_key_k_type(KEY_FORMAT_3_5, INODE_PKEY(inode), TYPE_STAT_DATA);
}
