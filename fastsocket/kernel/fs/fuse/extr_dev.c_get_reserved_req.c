
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {struct file* stolen_file; } ;
struct fuse_file {struct fuse_req* reserved_req; } ;
struct fuse_conn {int lock; int reserved_req_waitq; } ;
struct file {struct fuse_file* private_data; } ;


 int get_file (struct file*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event (int ,struct fuse_req*) ;

__attribute__((used)) static struct fuse_req *get_reserved_req(struct fuse_conn *fc,
      struct file *file)
{
 struct fuse_req *req = ((void*)0);
 struct fuse_file *ff = file->private_data;

 do {
  wait_event(fc->reserved_req_waitq, ff->reserved_req);
  spin_lock(&fc->lock);
  if (ff->reserved_req) {
   req = ff->reserved_req;
   ff->reserved_req = ((void*)0);
   get_file(file);
   req->stolen_file = file;
  }
  spin_unlock(&fc->lock);
 } while (!req);

 return req;
}
