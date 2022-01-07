
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int dummy; } ;
struct nilfs_sb_info {int * s_sc_info; struct the_nilfs* s_nilfs; } ;


 int ENOMEM ;
 int NILFS_SC (struct nilfs_sb_info*) ;
 int kfree (int *) ;
 int nilfs_attach_writer (struct the_nilfs*,struct nilfs_sb_info*) ;
 int nilfs_detach_writer (struct the_nilfs*,struct nilfs_sb_info*) ;
 int nilfs_segctor_init (int ) ;
 int * nilfs_segctor_new (struct nilfs_sb_info*) ;

int nilfs_attach_segment_constructor(struct nilfs_sb_info *sbi)
{
 struct the_nilfs *nilfs = sbi->s_nilfs;
 int err;



 sbi->s_sc_info = nilfs_segctor_new(sbi);
 if (!sbi->s_sc_info)
  return -ENOMEM;

 nilfs_attach_writer(nilfs, sbi);
 err = nilfs_segctor_init(NILFS_SC(sbi));
 if (err) {
  nilfs_detach_writer(nilfs, sbi);
  kfree(sbi->s_sc_info);
  sbi->s_sc_info = ((void*)0);
 }
 return err;
}
