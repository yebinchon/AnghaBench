
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_sc_info {int sc_flags; struct nilfs_sb_info* sc_sbi; } ;
struct nilfs_sb_info {int s_inode_lock; int s_dirty_files; } ;


 int NILFS_SC_DIRTY ;
 scalar_t__ list_empty (int *) ;
 scalar_t__ nilfs_segctor_clean (struct nilfs_sc_info*) ;
 scalar_t__ nilfs_test_metadata_dirty (struct nilfs_sb_info*) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int nilfs_segctor_confirm(struct nilfs_sc_info *sci)
{
 struct nilfs_sb_info *sbi = sci->sc_sbi;
 int ret = 0;

 if (nilfs_test_metadata_dirty(sbi))
  set_bit(NILFS_SC_DIRTY, &sci->sc_flags);

 spin_lock(&sbi->s_inode_lock);
 if (list_empty(&sbi->s_dirty_files) && nilfs_segctor_clean(sci))
  ret++;

 spin_unlock(&sbi->s_inode_lock);
 return ret;
}
