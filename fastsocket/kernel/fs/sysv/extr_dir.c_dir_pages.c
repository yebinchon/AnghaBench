
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_size; } ;


 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;

__attribute__((used)) static inline unsigned long dir_pages(struct inode *inode)
{
 return (inode->i_size+PAGE_CACHE_SIZE-1)>>PAGE_CACHE_SHIFT;
}
