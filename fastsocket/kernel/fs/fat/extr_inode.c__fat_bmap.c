
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct address_space {TYPE_1__* host; } ;
typedef int sector_t ;
struct TYPE_2__ {int i_alloc_sem; } ;


 int down_read (int *) ;
 int fat_get_block ;
 int generic_block_bmap (struct address_space*,int ,int ) ;
 int up_read (int *) ;

__attribute__((used)) static sector_t _fat_bmap(struct address_space *mapping, sector_t block)
{
 sector_t blocknr;


 down_read(&mapping->host->i_alloc_sem);
 blocknr = generic_block_bmap(mapping, block, fat_get_block);
 up_read(&mapping->host->i_alloc_sem);

 return blocknr;
}
