
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_readdesc {int * ctx; struct nfs_pageio_descriptor* pgio; } ;
struct nfs_pageio_descriptor {int pg_bytes_written; } ;
struct list_head {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
struct TYPE_4__ {int (* read_pageio_init ) (struct nfs_pageio_descriptor*,struct inode*,int *) ;} ;
struct TYPE_3__ {int s_id; } ;


 int EBADF ;
 int ESTALE ;
 int FMODE_READ ;
 int NFSIOS_READPAGES ;
 int NFSIOS_VFSREADPAGES ;
 scalar_t__ NFS_FILEID (struct inode*) ;
 TYPE_2__* NFS_PROTO (struct inode*) ;
 scalar_t__ NFS_STALE (struct inode*) ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int dprintk (char*,int ,long long,unsigned int) ;
 int * get_nfs_open_context (int ) ;
 int nfs_add_stats (struct inode*,int ,unsigned long) ;
 int nfs_async_read_completion_ops ;
 int nfs_file_open_context (struct file*) ;
 int * nfs_find_open_context (struct inode*,int *,int ) ;
 int nfs_inc_stats (struct inode*,int ) ;
 int nfs_pageio_complete (struct nfs_pageio_descriptor*) ;
 int nfs_readpages_from_fscache (int *,struct inode*,struct address_space*,struct list_head*,unsigned int*) ;
 int put_nfs_open_context (int *) ;
 int read_cache_pages (struct address_space*,struct list_head*,int ,struct nfs_readdesc*) ;
 int readpage_async_filler ;
 int stub1 (struct nfs_pageio_descriptor*,struct inode*,int *) ;

int nfs_readpages(struct file *filp, struct address_space *mapping,
  struct list_head *pages, unsigned nr_pages)
{
 struct nfs_pageio_descriptor pgio;
 struct nfs_readdesc desc = {
  .pgio = &pgio,
 };
 struct inode *inode = mapping->host;
 unsigned long npages;
 int ret = -ESTALE;

 dprintk("NFS: nfs_readpages (%s/%Ld %d)\n",
   inode->i_sb->s_id,
   (long long)NFS_FILEID(inode),
   nr_pages);
 nfs_inc_stats(inode, NFSIOS_VFSREADPAGES);

 if (NFS_STALE(inode))
  goto out;

 if (filp == ((void*)0)) {
  desc.ctx = nfs_find_open_context(inode, ((void*)0), FMODE_READ);
  if (desc.ctx == ((void*)0))
   return -EBADF;
 } else
  desc.ctx = get_nfs_open_context(nfs_file_open_context(filp));




 ret = nfs_readpages_from_fscache(desc.ctx, inode, mapping,
      pages, &nr_pages);
 if (ret == 0)
  goto read_complete;

 NFS_PROTO(inode)->read_pageio_init(&pgio, inode, &nfs_async_read_completion_ops);

 ret = read_cache_pages(mapping, pages, readpage_async_filler, &desc);

 nfs_pageio_complete(&pgio);
 npages = (pgio.pg_bytes_written + PAGE_CACHE_SIZE - 1) >> PAGE_CACHE_SHIFT;
 nfs_add_stats(inode, NFSIOS_READPAGES, npages);
read_complete:
 put_nfs_open_context(desc.ctx);
out:
 return ret;
}
