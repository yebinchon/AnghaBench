
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void page ;
struct nameidata {int dummy; } ;
struct inode {int i_data; int i_mapping; } ;
struct dentry {struct inode* d_inode; } ;
typedef int filler_t ;


 void* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (void*) ;
 void* kmap (void*) ;
 int nd_set_link (struct nameidata*,void*) ;
 int nfs_revalidate_mapping (struct inode*,int ) ;
 scalar_t__ nfs_symlink_filler ;
 void* read_cache_page (int *,int ,int *,struct inode*) ;

__attribute__((used)) static void *nfs_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 struct inode *inode = dentry->d_inode;
 struct page *page;
 void *err;

 err = ERR_PTR(nfs_revalidate_mapping(inode, inode->i_mapping));
 if (err)
  goto read_failed;
 page = read_cache_page(&inode->i_data, 0,
    (filler_t *)nfs_symlink_filler, inode);
 if (IS_ERR(page)) {
  err = page;
  goto read_failed;
 }
 nd_set_link(nd, kmap(page));
 return page;

read_failed:
 nd_set_link(nd, err);
 return ((void*)0);
}
