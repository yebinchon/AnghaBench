
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_flags; } ;
struct ext3_super_block {int s_journal_inum; } ;
typedef int journal_t ;
struct TYPE_2__ {int * s_journal; } ;


 int EINVAL ;
 int EIO ;
 int EROFS ;
 int EXT3_FEATURE_COMPAT_HAS_JOURNAL ;
 int EXT3_FEATURE_INCOMPAT_RECOVER ;
 TYPE_1__* EXT3_SB (struct super_block*) ;
 int EXT3_SET_COMPAT_FEATURE (struct super_block*,int ) ;
 int EXT3_SET_INCOMPAT_FEATURE (struct super_block*,int ) ;
 int KERN_ERR ;
 int KERN_INFO ;
 int MS_RDONLY ;
 int cpu_to_le32 (unsigned int) ;
 int ext3_commit_super (struct super_block*,struct ext3_super_block*,int) ;
 int * ext3_get_journal (struct super_block*,unsigned int) ;
 int ext3_msg (struct super_block*,int ,char*,...) ;
 int ext3_update_dynamic_rev (struct super_block*) ;
 int journal_create (int *) ;
 int journal_destroy (int *) ;

__attribute__((used)) static int ext3_create_journal(struct super_block *sb,
          struct ext3_super_block *es,
          unsigned int journal_inum)
{
 journal_t *journal;
 int err;

 if (sb->s_flags & MS_RDONLY) {
  ext3_msg(sb, KERN_ERR,
   "error: readonly filesystem when trying to "
   "create journal");
  return -EROFS;
 }

 journal = ext3_get_journal(sb, journal_inum);
 if (!journal)
  return -EINVAL;

 ext3_msg(sb, KERN_INFO, "creating new journal on inode %u",
        journal_inum);

 err = journal_create(journal);
 if (err) {
  ext3_msg(sb, KERN_ERR, "error creating journal");
  journal_destroy(journal);
  return -EIO;
 }

 EXT3_SB(sb)->s_journal = journal;

 ext3_update_dynamic_rev(sb);
 EXT3_SET_INCOMPAT_FEATURE(sb, EXT3_FEATURE_INCOMPAT_RECOVER);
 EXT3_SET_COMPAT_FEATURE(sb, EXT3_FEATURE_COMPAT_HAS_JOURNAL);

 es->s_journal_inum = cpu_to_le32(journal_inum);


 ext3_commit_super(sb, es, 1);

 return 0;
}
