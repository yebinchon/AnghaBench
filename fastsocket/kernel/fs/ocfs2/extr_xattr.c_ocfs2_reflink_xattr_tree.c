
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_reflink {int old_inode; int new_inode; } ;
struct ocfs2_reflink_xattr_tree_args {void* new_bucket; void* old_bucket; struct buffer_head* new_blk_bh; struct buffer_head* old_blk_bh; struct ocfs2_xattr_reflink* reflink; } ;
struct buffer_head {int dummy; } ;
typedef int para ;


 int ENOMEM ;
 int memset (struct ocfs2_reflink_xattr_tree_args*,int ,int) ;
 int mlog_errno (int) ;
 int ocfs2_iterate_xattr_index_block (int ,struct buffer_head*,int ,struct ocfs2_reflink_xattr_tree_args*) ;
 int ocfs2_reflink_xattr_rec ;
 int ocfs2_xattr_bucket_free (void*) ;
 void* ocfs2_xattr_bucket_new (int ) ;

__attribute__((used)) static int ocfs2_reflink_xattr_tree(struct ocfs2_xattr_reflink *args,
        struct buffer_head *blk_bh,
        struct buffer_head *new_blk_bh)
{
 int ret;
 struct ocfs2_reflink_xattr_tree_args para;

 memset(&para, 0, sizeof(para));
 para.reflink = args;
 para.old_blk_bh = blk_bh;
 para.new_blk_bh = new_blk_bh;

 para.old_bucket = ocfs2_xattr_bucket_new(args->old_inode);
 if (!para.old_bucket) {
  mlog_errno(-ENOMEM);
  return -ENOMEM;
 }

 para.new_bucket = ocfs2_xattr_bucket_new(args->new_inode);
 if (!para.new_bucket) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_iterate_xattr_index_block(args->old_inode, blk_bh,
           ocfs2_reflink_xattr_rec,
           &para);
 if (ret)
  mlog_errno(ret);

out:
 ocfs2_xattr_bucket_free(para.old_bucket);
 ocfs2_xattr_bucket_free(para.new_bucket);
 return ret;
}
