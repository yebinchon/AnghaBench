
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_flags; } ;
struct TYPE_2__ {int s_journal; int s_es; } ;


 int EXT3_FEATURE_INCOMPAT_RECOVER ;
 TYPE_1__* EXT3_SB (struct super_block*) ;
 int EXT3_SET_INCOMPAT_FEATURE (struct super_block*,int ) ;
 int MS_RDONLY ;
 int ext3_commit_super (struct super_block*,int ,int) ;
 int journal_unlock_updates (int ) ;
 int lock_super (struct super_block*) ;
 int unlock_super (struct super_block*) ;

__attribute__((used)) static int ext3_unfreeze(struct super_block *sb)
{
 if (!(sb->s_flags & MS_RDONLY)) {
  lock_super(sb);

  EXT3_SET_INCOMPAT_FEATURE(sb, EXT3_FEATURE_INCOMPAT_RECOVER);
  ext3_commit_super(sb, EXT3_SB(sb)->s_es, 1);
  unlock_super(sb);
  journal_unlock_updates(EXT3_SB(sb)->s_journal);
 }
 return 0;
}
