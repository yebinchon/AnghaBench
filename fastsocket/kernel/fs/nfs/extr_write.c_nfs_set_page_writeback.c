
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
 scalar_t__ NFS_CONGESTION_ON_THRESH ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 scalar_t__ atomic_long_inc_return (int *) ;
 int set_bdi_congested (int *,int ) ;
 int test_set_page_writeback (struct page*) ;

__attribute__((used)) static int nfs_set_page_writeback(struct page *page)
{
 int ret = test_set_page_writeback(page);

 if (!ret) {
  struct inode *inode = page->mapping->host;
  struct nfs_server *nfss = NFS_SERVER(inode);

  if (atomic_long_inc_return(&nfss->writeback) >
    NFS_CONGESTION_ON_THRESH) {
   set_bdi_congested(&nfss->backing_dev_info,
      BLK_RW_ASYNC);
  }
 }
 return ret;
}
