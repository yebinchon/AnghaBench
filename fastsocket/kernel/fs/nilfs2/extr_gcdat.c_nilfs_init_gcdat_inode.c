
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {struct inode* ns_gc_dat; struct inode* ns_dat; } ;
struct nilfs_inode_info {int i_state; int i_btnode_cache; int i_bmap; scalar_t__ i_cno; int i_flags; } ;
struct inode {int * i_mapping; int i_blocks; scalar_t__ i_state; } ;


 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int NILFS_I_GCDAT ;
 int nilfs_bmap_init_gcdat (int ,int ) ;
 int nilfs_copy_dirty_pages (int *,int *) ;
 scalar_t__ unlikely (int) ;

int nilfs_init_gcdat_inode(struct the_nilfs *nilfs)
{
 struct inode *dat = nilfs->ns_dat, *gcdat = nilfs->ns_gc_dat;
 struct nilfs_inode_info *dii = NILFS_I(dat), *gii = NILFS_I(gcdat);
 int err;

 gcdat->i_state = 0;
 gcdat->i_blocks = dat->i_blocks;
 gii->i_flags = dii->i_flags;
 gii->i_state = dii->i_state | (1 << NILFS_I_GCDAT);
 gii->i_cno = 0;
 nilfs_bmap_init_gcdat(gii->i_bmap, dii->i_bmap);
 err = nilfs_copy_dirty_pages(gcdat->i_mapping, dat->i_mapping);
 if (unlikely(err))
  return err;

 return nilfs_copy_dirty_pages(&gii->i_btnode_cache,
          &dii->i_btnode_cache);
}
