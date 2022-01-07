
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int dummy; } ;
typedef int sector_t ;


 int generic_block_bmap (struct address_space*,int ,int ) ;
 int reiserfs_bmap ;

__attribute__((used)) static sector_t reiserfs_aop_bmap(struct address_space *as, sector_t block)
{
 return generic_block_bmap(as, block, reiserfs_bmap);
}
