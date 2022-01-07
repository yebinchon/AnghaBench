
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int host; } ;
typedef int sector_t ;
typedef int pgoff_t ;


 int __ext2_get_block (int ,int ,int,int *) ;
 int __inode_direct_access (int ,int ,void**,unsigned long*) ;

int ext2_get_xip_mem(struct address_space *mapping, pgoff_t pgoff, int create,
    void **kmem, unsigned long *pfn)
{
 int rc;
 sector_t block;


 rc = __ext2_get_block(mapping->host, pgoff, create, &block);
 if (rc)
  return rc;


 rc = __inode_direct_access(mapping->host, block, kmem, pfn);
 return rc;
}
