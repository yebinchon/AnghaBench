
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_id; } ;
typedef int journal_t ;


 int ML_ERROR ;
 int jbd2_journal_ack_err (int *) ;
 int jbd2_journal_clear_err (int *) ;
 int jbd2_journal_errno (int *) ;
 int mlog (int ,char*,int,...) ;

__attribute__((used)) static void ocfs2_clear_journal_error(struct super_block *sb,
          journal_t *journal,
          int slot)
{
 int olderr;

 olderr = jbd2_journal_errno(journal);
 if (olderr) {
  mlog(ML_ERROR, "File system error %d recorded in "
       "journal %u.\n", olderr, slot);
  mlog(ML_ERROR, "File system on device %s needs checking.\n",
       sb->s_id);

  jbd2_journal_ack_err(journal);
  jbd2_journal_clear_err(journal);
 }
}
