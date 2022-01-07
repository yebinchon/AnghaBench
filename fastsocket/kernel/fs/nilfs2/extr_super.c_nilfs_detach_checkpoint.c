
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_super_sem; } ;
struct nilfs_sb_info {int s_list; int * s_ifile; struct the_nilfs* s_nilfs; } ;


 int down_write (int *) ;
 int list_del_init (int *) ;
 int nilfs_mdt_clear (int *) ;
 int nilfs_mdt_destroy (int *) ;
 int up_write (int *) ;

void nilfs_detach_checkpoint(struct nilfs_sb_info *sbi)
{
 struct the_nilfs *nilfs = sbi->s_nilfs;

 nilfs_mdt_clear(sbi->s_ifile);
 nilfs_mdt_destroy(sbi->s_ifile);
 sbi->s_ifile = ((void*)0);
 down_write(&nilfs->ns_super_sem);
 list_del_init(&sbi->s_list);
 up_write(&nilfs->ns_super_sem);
}
