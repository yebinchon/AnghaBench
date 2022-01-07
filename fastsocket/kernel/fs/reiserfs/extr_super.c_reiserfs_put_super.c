
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_flags; int * s_fs_info; scalar_t__ s_dirt; } ;
struct reiserfs_transaction_handle {scalar_t__ t_trans_id; } ;
struct TYPE_2__ {scalar_t__ reserved_blocks; int s_mount_state; } ;


 int MS_RDONLY ;
 TYPE_1__* REISERFS_SB (struct super_block*) ;
 int SB_BUFFER_WITH_SB (struct super_block*) ;
 int SB_DISK_SUPER_BLOCK (struct super_block*) ;
 int brelse (int ) ;
 int journal_begin (struct reiserfs_transaction_handle*,struct super_block*,int) ;
 int journal_mark_dirty (struct reiserfs_transaction_handle*,struct super_block*,int ) ;
 int journal_release (struct reiserfs_transaction_handle*,struct super_block*) ;
 int kfree (int *) ;
 int lock_kernel () ;
 int print_statistics (struct super_block*) ;
 int reiserfs_free_bitmap_cache (struct super_block*) ;
 int reiserfs_prepare_for_journal (struct super_block*,int ,int) ;
 int reiserfs_proc_info_done (struct super_block*) ;
 int reiserfs_warning (struct super_block*,char*,char*,scalar_t__) ;
 int reiserfs_write_super (struct super_block*) ;
 int set_sb_umount_state (int ,int ) ;
 int unlock_kernel () ;

__attribute__((used)) static void reiserfs_put_super(struct super_block *s)
{
 struct reiserfs_transaction_handle th;
 th.t_trans_id = 0;

 lock_kernel();

 if (s->s_dirt)
  reiserfs_write_super(s);


 if (!(s->s_flags & MS_RDONLY)) {
  if (!journal_begin(&th, s, 10)) {
   reiserfs_prepare_for_journal(s, SB_BUFFER_WITH_SB(s),
           1);
   set_sb_umount_state(SB_DISK_SUPER_BLOCK(s),
         REISERFS_SB(s)->s_mount_state);
   journal_mark_dirty(&th, s, SB_BUFFER_WITH_SB(s));
  }
 }




 journal_release(&th, s);

 reiserfs_free_bitmap_cache(s);

 brelse(SB_BUFFER_WITH_SB(s));

 print_statistics(s);

 if (REISERFS_SB(s)->reserved_blocks != 0) {
  reiserfs_warning(s, "green-2005", "reserved blocks left %d",
     REISERFS_SB(s)->reserved_blocks);
 }

 reiserfs_proc_info_done(s);

 kfree(s->s_fs_info);
 s->s_fs_info = ((void*)0);

 unlock_kernel();
}
