
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_flags; int s_id; } ;
struct ext3_super_block {int s_state; } ;
typedef int journal_t ;
struct TYPE_2__ {int s_mount_opt; int * s_journal; int s_mount_state; struct ext3_super_block* s_es; } ;


 int EIO ;
 int ERRORS_CONT ;
 int ERRORS_PANIC ;
 int ERRORS_RO ;
 int EXT3_ERROR_FS ;
 int EXT3_MOUNT_ABORT ;
 TYPE_1__* EXT3_SB (struct super_block*) ;
 int KERN_CRIT ;
 int MS_RDONLY ;
 int cpu_to_le16 (int ) ;
 int ext3_commit_super (struct super_block*,struct ext3_super_block*,int) ;
 int ext3_msg (struct super_block*,int ,char*) ;
 int journal_abort (int *,int ) ;
 int panic (char*,int ) ;
 scalar_t__ test_opt (struct super_block*,int ) ;

__attribute__((used)) static void ext3_handle_error(struct super_block *sb)
{
 struct ext3_super_block *es = EXT3_SB(sb)->s_es;

 EXT3_SB(sb)->s_mount_state |= EXT3_ERROR_FS;
 es->s_state |= cpu_to_le16(EXT3_ERROR_FS);

 if (sb->s_flags & MS_RDONLY)
  return;

 if (!test_opt (sb, ERRORS_CONT)) {
  journal_t *journal = EXT3_SB(sb)->s_journal;

  EXT3_SB(sb)->s_mount_opt |= EXT3_MOUNT_ABORT;
  if (journal)
   journal_abort(journal, -EIO);
 }
 if (test_opt (sb, ERRORS_RO)) {
  ext3_msg(sb, KERN_CRIT,
   "error: remounting filesystem read-only");
  sb->s_flags |= MS_RDONLY;
 }
 ext3_commit_super(sb, es, 1);
 if (test_opt(sb, ERRORS_PANIC))
  panic("EXT3-fs (%s): panic forced after error\n",
   sb->s_id);
}
