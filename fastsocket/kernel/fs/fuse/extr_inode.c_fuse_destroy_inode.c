
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fuse_inode {scalar_t__ forget_req; int queued_writes; int write_files; } ;


 int BUG_ON (int) ;
 int fuse_inode_cachep ;
 int fuse_request_free (scalar_t__) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int kmem_cache_free (int ,struct inode*) ;
 int list_empty (int *) ;

__attribute__((used)) static void fuse_destroy_inode(struct inode *inode)
{
 struct fuse_inode *fi = get_fuse_inode(inode);
 BUG_ON(!list_empty(&fi->write_files));
 BUG_ON(!list_empty(&fi->queued_writes));
 if (fi->forget_req)
  fuse_request_free(fi->forget_req);
 kmem_cache_free(fuse_inode_cachep, inode);
}
