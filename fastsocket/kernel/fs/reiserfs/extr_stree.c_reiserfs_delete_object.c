
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct reiserfs_transaction_handle {int t_super; int t_trans_id; } ;
struct inode {scalar_t__ i_size; } ;
typedef int __le32 ;
struct TYPE_4__ {TYPE_1__* s_rs; } ;
struct TYPE_3__ {int s_inode_generation; } ;


 int BUG_ON (int) ;
 int INODE_PKEY (struct inode*) ;
 TYPE_2__* REISERFS_SB (int ) ;
 int le32_add_cpu (int *,int) ;
 int old_format_only (int ) ;
 int reiserfs_delete_solid_item (struct reiserfs_transaction_handle*,struct inode*,int ) ;
 int reiserfs_do_truncate (struct reiserfs_transaction_handle*,struct inode*,int *,int ) ;

int reiserfs_delete_object(struct reiserfs_transaction_handle *th,
      struct inode *inode)
{
 int err;
 inode->i_size = 0;
 BUG_ON(!th->t_trans_id);


 err =
     reiserfs_do_truncate(th, inode, ((void*)0), 0 );
 if (err)
  return err;
 reiserfs_delete_solid_item(th, inode, INODE_PKEY(inode));

 return err;
}
