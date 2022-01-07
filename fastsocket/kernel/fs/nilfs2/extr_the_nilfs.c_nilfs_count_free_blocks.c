
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_blocks_per_segment; int ns_sufile; } ;
struct inode {int dummy; } ;
typedef int sector_t ;
struct TYPE_2__ {int mi_sem; } ;


 TYPE_1__* NILFS_MDT (struct inode*) ;
 int down_read (int *) ;
 scalar_t__ likely (int) ;
 struct inode* nilfs_dat_inode (struct the_nilfs*) ;
 int nilfs_sufile_get_ncleansegs (int ,unsigned long*) ;
 int up_read (int *) ;

int nilfs_count_free_blocks(struct the_nilfs *nilfs, sector_t *nblocks)
{
 struct inode *dat = nilfs_dat_inode(nilfs);
 unsigned long ncleansegs;
 int err;

 down_read(&NILFS_MDT(dat)->mi_sem);
 err = nilfs_sufile_get_ncleansegs(nilfs->ns_sufile, &ncleansegs);
 up_read(&NILFS_MDT(dat)->mi_sem);
 if (likely(!err))
  *nblocks = (sector_t)ncleansegs * nilfs->ns_blocks_per_segment;
 return err;
}
