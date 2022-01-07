
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {unsigned long i_blkbits; } ;


 unsigned long BITS_PER_LONG ;

__attribute__((used)) static inline unsigned long
nilfs_palloc_groups_count(const struct inode *inode)
{
 return 1UL << (BITS_PER_LONG - (inode->i_blkbits + 3 ));
}
