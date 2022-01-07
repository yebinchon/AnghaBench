
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfs_page {unsigned int wb_offset; unsigned int wb_bytes; unsigned int wb_pgbase; } ;
struct inode {int i_lock; } ;


 struct nfs_page* ERR_PTR (int) ;
 int PagePrivate (struct page*) ;
 int nfs_clear_request_commit (struct nfs_page*) ;
 scalar_t__ nfs_lock_request (struct nfs_page*) ;
 struct nfs_page* nfs_page_find_request_locked (struct page*) ;
 int nfs_release_request (struct nfs_page*) ;
 int nfs_wait_on_request (struct nfs_page*) ;
 int nfs_wb_page (struct inode*,struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nfs_page *nfs_try_to_update_request(struct inode *inode,
  struct page *page,
  unsigned int offset,
  unsigned int bytes)
{
 struct nfs_page *req;
 unsigned int rqend;
 unsigned int end;
 int error;

 if (!PagePrivate(page))
  return ((void*)0);

 end = offset + bytes;
 spin_lock(&inode->i_lock);

 for (;;) {
  req = nfs_page_find_request_locked(page);
  if (req == ((void*)0))
   goto out_unlock;

  rqend = req->wb_offset + req->wb_bytes;






  if (offset > rqend
      || end < req->wb_offset)
   goto out_flushme;

  if (nfs_lock_request(req))
   break;


  spin_unlock(&inode->i_lock);
  error = nfs_wait_on_request(req);
  nfs_release_request(req);
  if (error != 0)
   goto out_err;
  spin_lock(&inode->i_lock);
 }


 if (offset < req->wb_offset) {
  req->wb_offset = offset;
  req->wb_pgbase = offset;
 }
 if (end > rqend)
  req->wb_bytes = end - req->wb_offset;
 else
  req->wb_bytes = rqend - req->wb_offset;
out_unlock:
 spin_unlock(&inode->i_lock);
 if (req)
  nfs_clear_request_commit(req);
 return req;
out_flushme:
 spin_unlock(&inode->i_lock);
 nfs_release_request(req);
 error = nfs_wb_page(inode, page);
out_err:
 return ERR_PTR(error);
}
