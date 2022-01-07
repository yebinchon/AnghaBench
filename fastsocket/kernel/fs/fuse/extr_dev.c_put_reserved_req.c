
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {int max_pages; int page_descs; int pages; struct file* stolen_file; } ;
struct fuse_file {struct fuse_req* reserved_req; } ;
struct fuse_conn {int lock; int reserved_req_waitq; } ;
struct file {struct fuse_file* private_data; } ;


 int BUG_ON (struct fuse_req*) ;
 int fput (struct file*) ;
 int fuse_request_init (struct fuse_req*,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void put_reserved_req(struct fuse_conn *fc, struct fuse_req *req)
{
 struct file *file = req->stolen_file;
 struct fuse_file *ff = file->private_data;

 spin_lock(&fc->lock);
 fuse_request_init(req, req->pages, req->page_descs, req->max_pages);
 BUG_ON(ff->reserved_req);
 ff->reserved_req = req;
 wake_up_all(&fc->reserved_req_waitq);
 spin_unlock(&fc->lock);
 fput(file);
}
