
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int dummy; } ;
struct inode {int i_mapping; } ;
typedef int pgoff_t ;
typedef int loff_t ;


 int ENOENT ;
 int PAGE_CACHE_SHIFT ;
 int fuse_inode_eq ;
 int fuse_invalidate_attr (struct inode*) ;
 struct inode* ilookup5 (struct super_block*,int ,int ,int *) ;
 int invalidate_inode_pages2_range (int ,int,int) ;
 int iput (struct inode*) ;

int fuse_reverse_inval_inode(struct super_block *sb, u64 nodeid,
        loff_t offset, loff_t len)
{
 struct inode *inode;
 pgoff_t pg_start;
 pgoff_t pg_end;

 inode = ilookup5(sb, nodeid, fuse_inode_eq, &nodeid);
 if (!inode)
  return -ENOENT;

 fuse_invalidate_attr(inode);
 if (offset >= 0) {
  pg_start = offset >> PAGE_CACHE_SHIFT;
  if (len <= 0)
   pg_end = -1;
  else
   pg_end = (offset + len - 1) >> PAGE_CACHE_SHIFT;
  invalidate_inode_pages2_range(inode->i_mapping,
           pg_start, pg_end);
 }
 iput(inode);
 return 0;
}
