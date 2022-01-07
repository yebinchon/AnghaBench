
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int index; TYPE_1__* mapping; } ;
struct nfs_open_context {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 int EBADF ;
 int ESTALE ;
 int FMODE_READ ;
 int IS_SYNC (struct inode*) ;
 int NFSIOS_READPAGES ;
 int NFSIOS_VFSREADPAGE ;
 scalar_t__ NFS_STALE (struct inode*) ;
 int PAGE_CACHE_SIZE ;
 scalar_t__ PageUptodate (struct page*) ;
 int dprintk (char*,struct page*,int ,int ) ;
 struct nfs_open_context* get_nfs_open_context (int ) ;
 int nfs_add_stats (struct inode*,int ,int) ;
 int nfs_file_open_context (struct file*) ;
 struct nfs_open_context* nfs_find_open_context (struct inode*,int *,int ) ;
 int nfs_inc_stats (struct inode*,int ) ;
 int nfs_readpage_async (struct nfs_open_context*,struct inode*,struct page*) ;
 int nfs_readpage_from_fscache (struct nfs_open_context*,struct inode*,struct page*) ;
 int nfs_wb_page (struct inode*,struct page*) ;
 int put_nfs_open_context (struct nfs_open_context*) ;
 int unlock_page (struct page*) ;

int nfs_readpage(struct file *file, struct page *page)
{
 struct nfs_open_context *ctx;
 struct inode *inode = page->mapping->host;
 int error;

 dprintk("NFS: nfs_readpage (%p %ld@%lu)\n",
  page, PAGE_CACHE_SIZE, page->index);
 nfs_inc_stats(inode, NFSIOS_VFSREADPAGE);
 nfs_add_stats(inode, NFSIOS_READPAGES, 1);
 error = nfs_wb_page(inode, page);
 if (error)
  goto out_unlock;
 if (PageUptodate(page))
  goto out_unlock;

 error = -ESTALE;
 if (NFS_STALE(inode))
  goto out_unlock;

 if (file == ((void*)0)) {
  error = -EBADF;
  ctx = nfs_find_open_context(inode, ((void*)0), FMODE_READ);
  if (ctx == ((void*)0))
   goto out_unlock;
 } else
  ctx = get_nfs_open_context(nfs_file_open_context(file));

 if (!IS_SYNC(inode)) {
  error = nfs_readpage_from_fscache(ctx, inode, page);
  if (error == 0)
   goto out;
 }

 error = nfs_readpage_async(ctx, inode, page);

out:
 put_nfs_open_context(ctx);
 return error;
out_unlock:
 unlock_page(page);
 return error;
}
