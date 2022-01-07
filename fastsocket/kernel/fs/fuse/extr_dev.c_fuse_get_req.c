
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {int waiting; } ;
struct fuse_conn {int num_waiting; int connected; int blocked; int blocked_waitq; } ;
typedef int sigset_t ;


 int EINTR ;
 int ENOMEM ;
 int ENOTCONN ;
 struct fuse_req* ERR_PTR (int) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int block_sigs (int *) ;
 int fuse_req_init_context (struct fuse_req*) ;
 struct fuse_req* fuse_request_alloc (unsigned int) ;
 int restore_sigs (int *) ;
 int wait_event_interruptible (int ,int) ;

struct fuse_req *fuse_get_req(struct fuse_conn *fc, unsigned npages)
{
 struct fuse_req *req;
 sigset_t oldset;
 int intr;
 int err;

 atomic_inc(&fc->num_waiting);
 block_sigs(&oldset);
 intr = wait_event_interruptible(fc->blocked_waitq, !fc->blocked);
 restore_sigs(&oldset);
 err = -EINTR;
 if (intr)
  goto out;

 err = -ENOTCONN;
 if (!fc->connected)
  goto out;

 req = fuse_request_alloc(npages);
 err = -ENOMEM;
 if (!req)
  goto out;

 fuse_req_init_context(req);
 req->waiting = 1;
 return req;

 out:
 atomic_dec(&fc->num_waiting);
 return ERR_PTR(err);
}
