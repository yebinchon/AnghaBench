
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_inode {int forget_req; int page_waitq; int writepages; int queued_writes; int write_files; scalar_t__ orig_ino; scalar_t__ writectr; scalar_t__ attr_version; scalar_t__ nlookup; scalar_t__ nodeid; scalar_t__ i_time; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int fuse_inode_cachep ;
 int fuse_request_alloc (int ) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int init_waitqueue_head (int *) ;
 struct inode* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct inode*) ;

__attribute__((used)) static struct inode *fuse_alloc_inode(struct super_block *sb)
{
 struct inode *inode;
 struct fuse_inode *fi;

 inode = kmem_cache_alloc(fuse_inode_cachep, GFP_KERNEL);
 if (!inode)
  return ((void*)0);

 fi = get_fuse_inode(inode);
 fi->i_time = 0;
 fi->nodeid = 0;
 fi->nlookup = 0;
 fi->attr_version = 0;
 fi->writectr = 0;
 fi->orig_ino = 0;
 INIT_LIST_HEAD(&fi->write_files);
 INIT_LIST_HEAD(&fi->queued_writes);
 INIT_LIST_HEAD(&fi->writepages);
 init_waitqueue_head(&fi->page_waitq);
 fi->forget_req = fuse_request_alloc(0);
 if (!fi->forget_req) {
  kmem_cache_free(fuse_inode_cachep, inode);
  return ((void*)0);
 }

 return inode;
}
