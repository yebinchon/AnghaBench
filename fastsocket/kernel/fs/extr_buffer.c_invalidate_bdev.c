
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct block_device {TYPE_1__* bd_inode; } ;
struct address_space {scalar_t__ nrpages; } ;
struct TYPE_2__ {struct address_space* i_mapping; } ;


 int invalidate_bh_lrus () ;
 int invalidate_mapping_pages (struct address_space*,int ,int) ;
 int lru_add_drain_all () ;

void invalidate_bdev(struct block_device *bdev)
{
 struct address_space *mapping = bdev->bd_inode->i_mapping;

 if (mapping->nrpages == 0)
  return;

 invalidate_bh_lrus();
 lru_add_drain_all();
 invalidate_mapping_pages(mapping, 0, -1);
}
