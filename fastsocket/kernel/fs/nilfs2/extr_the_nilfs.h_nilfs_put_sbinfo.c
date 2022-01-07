
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_sb_info {int s_count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct nilfs_sb_info*) ;

__attribute__((used)) static inline void nilfs_put_sbinfo(struct nilfs_sb_info *sbi)
{
 if (atomic_dec_and_test(&sbi->s_count))
  kfree(sbi);
}
