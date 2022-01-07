
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_sufile; int ns_cpfile; } ;
struct nilfs_sc_info {struct nilfs_sb_info* sc_sbi; } ;
struct nilfs_sb_info {int s_ifile; struct the_nilfs* s_nilfs; } ;


 int nilfs_dat_inode (struct the_nilfs*) ;
 int nilfs_mdt_clear_dirty (int ) ;

__attribute__((used)) static void nilfs_segctor_clear_metadata_dirty(struct nilfs_sc_info *sci)
{
 struct nilfs_sb_info *sbi = sci->sc_sbi;
 struct the_nilfs *nilfs = sbi->s_nilfs;

 nilfs_mdt_clear_dirty(sbi->s_ifile);
 nilfs_mdt_clear_dirty(nilfs->ns_cpfile);
 nilfs_mdt_clear_dirty(nilfs->ns_sufile);
 nilfs_mdt_clear_dirty(nilfs_dat_inode(nilfs));
}
