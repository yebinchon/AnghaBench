
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_cno; int ns_cpfile; } ;
struct nilfs_sc_info {TYPE_1__* sc_sbi; } ;
struct nilfs_checkpoint {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {struct the_nilfs* s_nilfs; } ;


 int EINVAL ;
 int ENOENT ;
 int WARN_ON (int) ;
 scalar_t__ likely (int) ;
 int nilfs_cpfile_get_checkpoint (int ,int ,int,struct nilfs_checkpoint**,struct buffer_head**) ;
 int nilfs_cpfile_put_checkpoint (int ,int ,struct buffer_head*) ;
 int nilfs_mdt_mark_buffer_dirty (struct buffer_head*) ;
 int nilfs_mdt_mark_dirty (int ) ;

__attribute__((used)) static int nilfs_segctor_create_checkpoint(struct nilfs_sc_info *sci)
{
 struct the_nilfs *nilfs = sci->sc_sbi->s_nilfs;
 struct buffer_head *bh_cp;
 struct nilfs_checkpoint *raw_cp;
 int err;


 err = nilfs_cpfile_get_checkpoint(nilfs->ns_cpfile, nilfs->ns_cno, 1,
       &raw_cp, &bh_cp);
 if (likely(!err)) {



  nilfs_mdt_mark_buffer_dirty(bh_cp);
  nilfs_mdt_mark_dirty(nilfs->ns_cpfile);
  nilfs_cpfile_put_checkpoint(
   nilfs->ns_cpfile, nilfs->ns_cno, bh_cp);
 } else
  WARN_ON(err == -EINVAL || err == -ENOENT);

 return err;
}
