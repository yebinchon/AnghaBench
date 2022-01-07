
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_bmap {int b_inode; } ;
struct inode {int dummy; } ;


 int NILFS_I_NILFS (int ) ;
 struct inode* nilfs_dat_inode (int ) ;

struct inode *nilfs_bmap_get_dat(const struct nilfs_bmap *bmap)
{
 return nilfs_dat_inode(NILFS_I_NILFS(bmap->b_inode));
}
