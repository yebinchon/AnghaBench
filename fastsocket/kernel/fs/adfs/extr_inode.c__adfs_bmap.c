
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int dummy; } ;
typedef int sector_t ;


 int adfs_get_block ;
 int generic_block_bmap (struct address_space*,int ,int ) ;

__attribute__((used)) static sector_t _adfs_bmap(struct address_space *mapping, sector_t block)
{
 return generic_block_bmap(mapping, block, adfs_get_block);
}
