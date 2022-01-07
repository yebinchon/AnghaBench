
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_super_sem; struct nilfs_sb_info* ns_current; int ns_sem; int ns_mount_state; TYPE_1__** ns_sbp; } ;
struct super_block {int s_flags; int * s_fs_info; } ;
struct nilfs_sb_info {int * s_super; struct the_nilfs* s_nilfs; } ;
struct TYPE_2__ {int s_state; } ;


 int MS_RDONLY ;
 struct nilfs_sb_info* NILFS_SB (struct super_block*) ;
 int cpu_to_le16 (int ) ;
 int down_write (int *) ;
 int lock_kernel () ;
 int nilfs_commit_super (struct nilfs_sb_info*,int) ;
 int nilfs_detach_checkpoint (struct nilfs_sb_info*) ;
 int nilfs_detach_segment_constructor (struct nilfs_sb_info*) ;
 int nilfs_put_sbinfo (struct nilfs_sb_info*) ;
 int put_nilfs (struct the_nilfs*) ;
 int unlock_kernel () ;
 int up_write (int *) ;

__attribute__((used)) static void nilfs_put_super(struct super_block *sb)
{
 struct nilfs_sb_info *sbi = NILFS_SB(sb);
 struct the_nilfs *nilfs = sbi->s_nilfs;

 lock_kernel();

 nilfs_detach_segment_constructor(sbi);

 if (!(sb->s_flags & MS_RDONLY)) {
  down_write(&nilfs->ns_sem);
  nilfs->ns_sbp[0]->s_state = cpu_to_le16(nilfs->ns_mount_state);
  nilfs_commit_super(sbi, 1);
  up_write(&nilfs->ns_sem);
 }
 down_write(&nilfs->ns_super_sem);
 if (nilfs->ns_current == sbi)
  nilfs->ns_current = ((void*)0);
 up_write(&nilfs->ns_super_sem);

 nilfs_detach_checkpoint(sbi);
 put_nilfs(sbi->s_nilfs);
 sbi->s_super = ((void*)0);
 sb->s_fs_info = ((void*)0);
 nilfs_put_sbinfo(sbi);

 unlock_kernel();
}
