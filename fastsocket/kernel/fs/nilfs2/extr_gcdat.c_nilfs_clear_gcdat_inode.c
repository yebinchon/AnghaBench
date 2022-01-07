
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {struct inode* ns_gc_dat; } ;
struct nilfs_inode_info {int i_btnode_cache; scalar_t__ i_flags; } ;
struct inode {int * i_mapping; int i_state; } ;


 int I_CLEAR ;
 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int truncate_inode_pages (int *,int ) ;

void nilfs_clear_gcdat_inode(struct the_nilfs *nilfs)
{
 struct inode *gcdat = nilfs->ns_gc_dat;
 struct nilfs_inode_info *gii = NILFS_I(gcdat);

 gcdat->i_state = I_CLEAR;
 gii->i_flags = 0;

 truncate_inode_pages(gcdat->i_mapping, 0);
 truncate_inode_pages(&gii->i_btnode_cache, 0);
}
