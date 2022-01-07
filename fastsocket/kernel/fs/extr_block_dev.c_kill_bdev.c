
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct block_device {TYPE_1__* bd_inode; } ;
struct TYPE_4__ {scalar_t__ nrpages; } ;
struct TYPE_3__ {TYPE_2__* i_mapping; } ;


 int invalidate_bh_lrus () ;
 int truncate_inode_pages (TYPE_2__*,int ) ;

__attribute__((used)) static void kill_bdev(struct block_device *bdev)
{
 if (bdev->bd_inode->i_mapping->nrpages == 0)
  return;
 invalidate_bh_lrus();
 truncate_inode_pages(bdev->bd_inode->i_mapping, 0);
}
