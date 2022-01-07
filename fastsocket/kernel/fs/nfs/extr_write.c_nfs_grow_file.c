
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int index; TYPE_1__* mapping; } ;
struct inode {int i_lock; } ;
typedef int pgoff_t ;
typedef int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int NFSIOS_EXTENDWRITE ;
 int PAGE_CACHE_SHIFT ;
 int i_size_read (struct inode*) ;
 int i_size_write (struct inode*,int) ;
 int nfs_inc_stats (struct inode*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nfs_grow_file(struct page *page, unsigned int offset, unsigned int count)
{
 struct inode *inode = page->mapping->host;
 loff_t end, i_size;
 pgoff_t end_index;

 spin_lock(&inode->i_lock);
 i_size = i_size_read(inode);
 end_index = (i_size - 1) >> PAGE_CACHE_SHIFT;
 if (i_size > 0 && page->index < end_index)
  goto out;
 end = ((loff_t)page->index << PAGE_CACHE_SHIFT) + ((loff_t)offset+count);
 if (i_size >= end)
  goto out;
 i_size_write(inode, end);
 nfs_inc_stats(inode, NFSIOS_EXTENDWRITE);
out:
 spin_unlock(&inode->i_lock);
}
