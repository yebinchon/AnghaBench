
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int dummy; } ;
typedef int loff_t ;


 int truncate_inode_pages_range (struct address_space*,int ,int ) ;

void truncate_inode_pages(struct address_space *mapping, loff_t lstart)
{
 truncate_inode_pages_range(mapping, lstart, (loff_t)-1);
}
