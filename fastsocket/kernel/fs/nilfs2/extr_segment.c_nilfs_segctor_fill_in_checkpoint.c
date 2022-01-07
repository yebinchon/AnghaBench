
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {scalar_t__ ns_cno; int ns_cpfile; } ;
struct nilfs_sc_info {int sc_flags; scalar_t__ sc_seg_ctime; scalar_t__ sc_nblk_this_inc; scalar_t__ sc_nblk_inc; struct nilfs_sb_info* sc_sbi; } ;
struct nilfs_sb_info {int s_ifile; int s_blocks_count; int s_inodes_count; struct the_nilfs* s_nilfs; } ;
struct TYPE_2__ {scalar_t__ ssl_prev; scalar_t__ ssl_next; } ;
struct nilfs_checkpoint {int cp_ifile_inode; void* cp_cno; void* cp_create; void* cp_nblk_inc; void* cp_blocks_count; void* cp_inodes_count; TYPE_1__ cp_snapshot_list; } ;
struct buffer_head {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int NILFS_SC_HAVE_DELTA ;
 int WARN_ON (int) ;
 scalar_t__ atomic_read (int *) ;
 void* cpu_to_le64 (scalar_t__) ;
 int nilfs_checkpoint_clear_minor (struct nilfs_checkpoint*) ;
 int nilfs_checkpoint_set_minor (struct nilfs_checkpoint*) ;
 int nilfs_cpfile_get_checkpoint (int ,scalar_t__,int ,struct nilfs_checkpoint**,struct buffer_head**) ;
 int nilfs_cpfile_put_checkpoint (int ,scalar_t__,struct buffer_head*) ;
 int nilfs_write_inode_common (int ,int *,int) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nilfs_segctor_fill_in_checkpoint(struct nilfs_sc_info *sci)
{
 struct nilfs_sb_info *sbi = sci->sc_sbi;
 struct the_nilfs *nilfs = sbi->s_nilfs;
 struct buffer_head *bh_cp;
 struct nilfs_checkpoint *raw_cp;
 int err;

 err = nilfs_cpfile_get_checkpoint(nilfs->ns_cpfile, nilfs->ns_cno, 0,
       &raw_cp, &bh_cp);
 if (unlikely(err)) {
  WARN_ON(err == -EINVAL || err == -ENOENT);
  goto failed_ibh;
 }
 raw_cp->cp_snapshot_list.ssl_next = 0;
 raw_cp->cp_snapshot_list.ssl_prev = 0;
 raw_cp->cp_inodes_count =
  cpu_to_le64(atomic_read(&sbi->s_inodes_count));
 raw_cp->cp_blocks_count =
  cpu_to_le64(atomic_read(&sbi->s_blocks_count));
 raw_cp->cp_nblk_inc =
  cpu_to_le64(sci->sc_nblk_inc + sci->sc_nblk_this_inc);
 raw_cp->cp_create = cpu_to_le64(sci->sc_seg_ctime);
 raw_cp->cp_cno = cpu_to_le64(nilfs->ns_cno);

 if (test_bit(NILFS_SC_HAVE_DELTA, &sci->sc_flags))
  nilfs_checkpoint_clear_minor(raw_cp);
 else
  nilfs_checkpoint_set_minor(raw_cp);

 nilfs_write_inode_common(sbi->s_ifile, &raw_cp->cp_ifile_inode, 1);
 nilfs_cpfile_put_checkpoint(nilfs->ns_cpfile, nilfs->ns_cno, bh_cp);
 return 0;

 failed_ibh:
 return err;
}
