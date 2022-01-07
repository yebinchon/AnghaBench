
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_super_block {int dummy; } ;
struct nilfs_sb_info {int s_mount_opt; } ;


 int NILFS_MOUNT_BARRIER ;
 int NILFS_MOUNT_ERRORS_CONT ;

__attribute__((used)) static inline void
nilfs_set_default_options(struct nilfs_sb_info *sbi,
     struct nilfs_super_block *sbp)
{
 sbi->s_mount_opt =
  NILFS_MOUNT_ERRORS_CONT | NILFS_MOUNT_BARRIER;
}
