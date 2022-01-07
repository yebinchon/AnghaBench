
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct page {TYPE_4__* mapping; } ;
struct nfs_page {struct nfs_open_context* wb_context; struct page* wb_page; struct nfs_lock_context* wb_lock_context; } ;
struct nfs_open_context {TYPE_2__* dentry; } ;
struct TYPE_8__ {scalar_t__ l_owner; scalar_t__ l_pid; } ;
struct nfs_lock_context {TYPE_3__ lockowner; } ;
struct file {int dummy; } ;
struct TYPE_10__ {scalar_t__ files; scalar_t__ tgid; } ;
struct TYPE_9__ {int host; } ;
struct TYPE_7__ {TYPE_1__* d_inode; } ;
struct TYPE_6__ {int * i_flock; } ;


 TYPE_5__* current ;
 struct nfs_open_context* nfs_file_open_context (struct file*) ;
 struct nfs_page* nfs_page_find_request (struct page*) ;
 int nfs_release_request (struct nfs_page*) ;
 int nfs_wb_page (int ,struct page*) ;

int nfs_flush_incompatible(struct file *file, struct page *page)
{
 struct nfs_open_context *ctx = nfs_file_open_context(file);
 struct nfs_lock_context *l_ctx;
 struct nfs_page *req;
 int do_flush, status;
 do {
  req = nfs_page_find_request(page);
  if (req == ((void*)0))
   return 0;
  l_ctx = req->wb_lock_context;
  do_flush = req->wb_page != page || req->wb_context != ctx;
  if (l_ctx && ctx->dentry->d_inode->i_flock != ((void*)0)) {
   do_flush |= l_ctx->lockowner.l_owner != current->files
    || l_ctx->lockowner.l_pid != current->tgid;
  }
  nfs_release_request(req);
  if (!do_flush)
   return 0;
  status = nfs_wb_page(page->mapping->host, page);
 } while (status == 0);
 return status;
}
