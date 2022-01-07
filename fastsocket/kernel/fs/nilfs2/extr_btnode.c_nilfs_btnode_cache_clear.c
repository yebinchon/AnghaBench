
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int dummy; } ;


 int invalidate_mapping_pages (struct address_space*,int ,int) ;
 int truncate_inode_pages (struct address_space*,int ) ;

void nilfs_btnode_cache_clear(struct address_space *btnc)
{
 invalidate_mapping_pages(btnc, 0, -1);
 truncate_inode_pages(btnc, 0);
}
