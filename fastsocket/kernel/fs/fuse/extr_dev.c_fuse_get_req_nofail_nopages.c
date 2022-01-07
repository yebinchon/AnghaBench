
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {int waiting; } ;
struct fuse_conn {int blocked; int blocked_waitq; int num_waiting; } ;
struct file {int dummy; } ;


 int atomic_inc (int *) ;
 int fuse_req_init_context (struct fuse_req*) ;
 struct fuse_req* fuse_request_alloc (int ) ;
 struct fuse_req* get_reserved_req (struct fuse_conn*,struct file*) ;
 int wait_event (int ,int) ;

struct fuse_req *fuse_get_req_nofail_nopages(struct fuse_conn *fc,
          struct file *file)
{
 struct fuse_req *req;

 atomic_inc(&fc->num_waiting);
 wait_event(fc->blocked_waitq, !fc->blocked);
 req = fuse_request_alloc(0);
 if (!req)
  req = get_reserved_req(fc, file);

 fuse_req_init_context(req);
 req->waiting = 1;
 return req;
}
