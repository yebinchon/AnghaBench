
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; int unique; } ;
struct TYPE_4__ {scalar_t__ args; int numargs; TYPE_1__ h; } ;
struct fuse_req {int waiting; int state; int list; TYPE_2__ in; } ;
struct fuse_in_header {int dummy; } ;
struct fuse_conn {int fasync; int waitq; int num_waiting; int pending; } ;
struct fuse_arg {int dummy; } ;


 int FUSE_REQ_PENDING ;
 int POLL_IN ;
 int SIGIO ;
 int atomic_inc (int *) ;
 int fuse_get_unique (struct fuse_conn*) ;
 int kill_fasync (int *,int ,int ) ;
 scalar_t__ len_args (int ,struct fuse_arg*) ;
 int list_add_tail (int *,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void queue_request(struct fuse_conn *fc, struct fuse_req *req)
{
 req->in.h.unique = fuse_get_unique(fc);
 req->in.h.len = sizeof(struct fuse_in_header) +
  len_args(req->in.numargs, (struct fuse_arg *) req->in.args);
 list_add_tail(&req->list, &fc->pending);
 req->state = FUSE_REQ_PENDING;
 if (!req->waiting) {
  req->waiting = 1;
  atomic_inc(&fc->num_waiting);
 }
 wake_up(&fc->waitq);
 kill_fasync(&fc->fasync, SIGIO, POLL_IN);
}
