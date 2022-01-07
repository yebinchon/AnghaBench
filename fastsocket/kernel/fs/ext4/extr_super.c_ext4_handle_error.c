
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_flags; int s_id; } ;
struct ext4_super_block {int s_state; } ;
typedef int journal_t ;
struct TYPE_2__ {int s_mount_flags; int * s_journal; int s_mount_state; struct ext4_super_block* s_es; } ;


 int EIO ;
 int ERRORS_CONT ;
 int ERRORS_PANIC ;
 int ERRORS_RO ;
 int EXT4_ERROR_FS ;
 int EXT4_MF_FS_ABORTED ;
 TYPE_1__* EXT4_SB (struct super_block*) ;
 int KERN_CRIT ;
 int MS_RDONLY ;
 int cpu_to_le16 (int ) ;
 int ext4_commit_super (struct super_block*,int) ;
 int ext4_msg (struct super_block*,int ,char*) ;
 int jbd2_journal_abort (int *,int ) ;
 int panic (char*,int ) ;
 scalar_t__ test_opt (struct super_block*,int ) ;

__attribute__((used)) static void ext4_handle_error(struct super_block *sb)
{
 struct ext4_super_block *es = EXT4_SB(sb)->s_es;

 EXT4_SB(sb)->s_mount_state |= EXT4_ERROR_FS;
 es->s_state |= cpu_to_le16(EXT4_ERROR_FS);

 if (sb->s_flags & MS_RDONLY)
  return;

 if (!test_opt(sb, ERRORS_CONT)) {
  journal_t *journal = EXT4_SB(sb)->s_journal;

  EXT4_SB(sb)->s_mount_flags |= EXT4_MF_FS_ABORTED;
  if (journal)
   jbd2_journal_abort(journal, -EIO);
 }
 if (test_opt(sb, ERRORS_RO)) {
  ext4_msg(sb, KERN_CRIT, "Remounting filesystem read-only");
  sb->s_flags |= MS_RDONLY;
 }
 ext4_commit_super(sb, 1);
 if (test_opt(sb, ERRORS_PANIC))
  panic("EXT4-fs (device %s): panic forced after error\n",
   sb->s_id);
}
