
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct page {int dummy; } ;
struct inode {int i_sb; } ;


 int OCFS2_SB (int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 scalar_t__ ocfs2_sparse_alloc (int ) ;
 scalar_t__ page_offset (struct page*) ;

__attribute__((used)) static int ocfs2_should_read_blk(struct inode *inode, struct page *page,
     unsigned int block_start)
{
 u64 offset = page_offset(page) + block_start;

 if (ocfs2_sparse_alloc(OCFS2_SB(inode->i_sb)))
  return 1;

 if (i_size_read(inode) > offset)
  return 1;

 return 0;
}
