
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_flags; } ;
typedef int journal_t ;
struct TYPE_2__ {int s_es; int * s_journal; } ;


 int EXT3_CLEAR_INCOMPAT_FEATURE (struct super_block*,int ) ;
 int EXT3_FEATURE_INCOMPAT_RECOVER ;
 TYPE_1__* EXT3_SB (struct super_block*) ;
 int MS_RDONLY ;
 int ext3_commit_super (struct super_block*,int ,int) ;
 int journal_flush (int *) ;
 int journal_lock_updates (int *) ;
 int journal_unlock_updates (int *) ;

__attribute__((used)) static int ext3_freeze(struct super_block *sb)
{
 int error = 0;
 journal_t *journal;

 if (!(sb->s_flags & MS_RDONLY)) {
  journal = EXT3_SB(sb)->s_journal;


  journal_lock_updates(journal);





  error = journal_flush(journal);
  if (error < 0)
   goto out;


  EXT3_CLEAR_INCOMPAT_FEATURE(sb, EXT3_FEATURE_INCOMPAT_RECOVER);
  error = ext3_commit_super(sb, EXT3_SB(sb)->s_es, 1);
  if (error)
   goto out;
 }
 return 0;

out:
 journal_unlock_updates(journal);
 return error;
}
