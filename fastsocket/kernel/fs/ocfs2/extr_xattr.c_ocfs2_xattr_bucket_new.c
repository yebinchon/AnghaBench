
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_bucket {int bu_blocks; struct inode* bu_inode; } ;
struct inode {int i_sb; } ;


 int BUG_ON (int) ;
 int GFP_NOFS ;
 int OCFS2_XATTR_MAX_BLOCKS_PER_BUCKET ;
 struct ocfs2_xattr_bucket* kzalloc (int,int ) ;
 int ocfs2_blocks_per_xattr_bucket (int ) ;

__attribute__((used)) static struct ocfs2_xattr_bucket *ocfs2_xattr_bucket_new(struct inode *inode)
{
 struct ocfs2_xattr_bucket *bucket;
 int blks = ocfs2_blocks_per_xattr_bucket(inode->i_sb);

 BUG_ON(blks > OCFS2_XATTR_MAX_BLOCKS_PER_BUCKET);

 bucket = kzalloc(sizeof(struct ocfs2_xattr_bucket), GFP_NOFS);
 if (bucket) {
  bucket->bu_inode = inode;
  bucket->bu_blocks = blks;
 }

 return bucket;
}
