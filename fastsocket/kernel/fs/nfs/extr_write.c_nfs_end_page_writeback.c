
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct nfs_server {int backing_dev_info; int writeback; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 int BLK_RW_ASYNC ;
 scalar_t__ NFS_CONGESTION_OFF_THRESH ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 scalar_t__ atomic_long_dec_return (int *) ;
 int clear_bdi_congested (int *,int ) ;
 int end_page_writeback (struct page*) ;

__attribute__((used)) static void nfs_end_page_writeback(struct page *page)
{
 struct inode *inode = page->mapping->host;
 struct nfs_server *nfss = NFS_SERVER(inode);

 end_page_writeback(page);
 if (atomic_long_dec_return(&nfss->writeback) < NFS_CONGESTION_OFF_THRESH)
  clear_bdi_congested(&nfss->backing_dev_info, BLK_RW_ASYNC);
}
