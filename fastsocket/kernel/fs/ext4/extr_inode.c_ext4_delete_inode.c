
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; scalar_t__ i_blocks; scalar_t__ i_size; int i_data; } ;
typedef int handle_t ;
struct TYPE_2__ {int i_dtime; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 scalar_t__ IS_SYNC (struct inode*) ;
 int PTR_ERR (int *) ;
 scalar_t__ blocks_for_truncate (struct inode*) ;
 int clear_inode (struct inode*) ;
 int ext4_begin_ordered_truncate (struct inode*,int ) ;
 int ext4_free_inode (int *,struct inode*) ;
 int ext4_handle_has_enough_credits (int *,int) ;
 int ext4_handle_sync (int *) ;
 int ext4_journal_extend (int *,int) ;
 int ext4_journal_restart (int *,int) ;
 int * ext4_journal_start (struct inode*,scalar_t__) ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_orphan_del (int *,struct inode*) ;
 scalar_t__ ext4_should_order_data (struct inode*) ;
 int ext4_std_error (int ,int ) ;
 int ext4_truncate (struct inode*) ;
 int ext4_warning (int ,char*,int) ;
 int get_seconds () ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int sb_end_intwrite (int ) ;
 int sb_start_intwrite (int ) ;
 int truncate_inode_pages (int *,int ) ;

void ext4_delete_inode(struct inode *inode)
{
 handle_t *handle;
 int err;

 if (ext4_should_order_data(inode))
  ext4_begin_ordered_truncate(inode, 0);
 truncate_inode_pages(&inode->i_data, 0);

 if (is_bad_inode(inode))
  goto no_delete;





 sb_start_intwrite(inode->i_sb);
 handle = ext4_journal_start(inode, blocks_for_truncate(inode)+3);
 if (IS_ERR(handle)) {
  ext4_std_error(inode->i_sb, PTR_ERR(handle));





  ext4_orphan_del(((void*)0), inode);
  sb_end_intwrite(inode->i_sb);
  goto no_delete;
 }

 if (IS_SYNC(inode))
  ext4_handle_sync(handle);
 inode->i_size = 0;
 err = ext4_mark_inode_dirty(handle, inode);
 if (err) {
  ext4_warning(inode->i_sb,
        "couldn't mark inode dirty (err %d)", err);
  goto stop_handle;
 }
 if (inode->i_blocks)
  ext4_truncate(inode);







 if (!ext4_handle_has_enough_credits(handle, 3)) {
  err = ext4_journal_extend(handle, 3);
  if (err > 0)
   err = ext4_journal_restart(handle, 3);
  if (err != 0) {
   ext4_warning(inode->i_sb,
         "couldn't extend journal (err %d)", err);
  stop_handle:
   ext4_journal_stop(handle);
   sb_end_intwrite(inode->i_sb);
   goto no_delete;
  }
 }
 ext4_orphan_del(handle, inode);
 EXT4_I(inode)->i_dtime = get_seconds();
 if (ext4_mark_inode_dirty(handle, inode))

  clear_inode(inode);
 else
  ext4_free_inode(handle, inode);
 ext4_journal_stop(handle);
 sb_end_intwrite(inode->i_sb);
 return;
no_delete:
 clear_inode(inode);
}
