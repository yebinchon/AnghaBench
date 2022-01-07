
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct nfs_pageio_descriptor {scalar_t__ pg_error; } ;
struct TYPE_4__ {int (* write_pageio_init ) (struct nfs_pageio_descriptor*,int ,int ,int *) ;} ;
struct TYPE_3__ {int host; } ;


 TYPE_2__* NFS_PROTO (int ) ;
 int nfs_async_write_completion_ops ;
 int nfs_do_writepage (struct page*,struct writeback_control*,struct nfs_pageio_descriptor*) ;
 int nfs_pageio_complete (struct nfs_pageio_descriptor*) ;
 int stub1 (struct nfs_pageio_descriptor*,int ,int ,int *) ;
 int wb_priority (struct writeback_control*) ;

__attribute__((used)) static int nfs_writepage_locked(struct page *page, struct writeback_control *wbc)
{
 struct nfs_pageio_descriptor pgio;
 int err;

 NFS_PROTO(page->mapping->host)->write_pageio_init(&pgio,
         page->mapping->host,
         wb_priority(wbc),
         &nfs_async_write_completion_ops);
 err = nfs_do_writepage(page, wbc, &pgio);
 nfs_pageio_complete(&pgio);
 if (err < 0)
  return err;
 if (pgio.pg_error < 0)
  return pgio.pg_error;
 return 0;
}
