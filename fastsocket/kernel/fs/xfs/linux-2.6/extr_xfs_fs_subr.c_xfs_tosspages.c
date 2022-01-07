
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_off_t ;
typedef int xfs_inode_t ;
struct TYPE_2__ {int i_mapping; } ;


 int PAGE_SIZE ;
 TYPE_1__* VFS_I (int *) ;
 int truncate_inode_pages_range (int ,int,int) ;

void
xfs_tosspages(
 xfs_inode_t *ip,
 xfs_off_t first,
 xfs_off_t last,
 int fiopt)
{

 last &= ~(PAGE_SIZE - 1);
 truncate_inode_pages_range(VFS_I(ip)->i_mapping, first, last - 1);
}
