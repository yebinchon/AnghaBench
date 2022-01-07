
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int ocfs2_iterate_xattr_buckets (struct inode*,int ,int ,int ,void*) ;
 int ocfs2_list_xattr_bucket ;

__attribute__((used)) static int ocfs2_list_xattr_tree_rec(struct inode *inode,
         struct buffer_head *root_bh,
         u64 blkno, u32 cpos, u32 len, void *para)
{
 return ocfs2_iterate_xattr_buckets(inode, blkno, len,
        ocfs2_list_xattr_bucket, para);
}
