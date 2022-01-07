
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct fuse_init_in {int max_readahead; int flags; int minor; int major; } ;
struct TYPE_14__ {int init_out; struct fuse_init_in init_in; } ;
struct TYPE_13__ {int numargs; int argvar; TYPE_5__* args; } ;
struct TYPE_9__ {int opcode; } ;
struct TYPE_11__ {int numargs; TYPE_3__* args; TYPE_2__ h; } ;
struct fuse_req {int end; TYPE_7__ misc; TYPE_6__ out; TYPE_4__ in; } ;
struct fuse_init_out {int dummy; } ;
struct TYPE_8__ {int ra_pages; } ;
struct fuse_conn {TYPE_1__ bdi; } ;
struct TYPE_12__ {int size; int * value; } ;
struct TYPE_10__ {int size; struct fuse_init_in* value; } ;


 int FUSE_ASYNC_DIO ;
 int FUSE_ASYNC_READ ;
 int FUSE_ATOMIC_O_TRUNC ;
 int FUSE_AUTO_INVAL_DATA ;
 int FUSE_BIG_WRITES ;
 int FUSE_DONT_MASK ;
 int FUSE_DO_READDIRPLUS ;
 int FUSE_EXPORT_SUPPORT ;
 int FUSE_INIT ;
 int FUSE_KERNEL_MINOR_VERSION ;
 int FUSE_KERNEL_VERSION ;
 int FUSE_POSIX_LOCKS ;
 int PAGE_CACHE_SIZE ;
 int fuse_request_send_background (struct fuse_conn*,struct fuse_req*) ;
 int process_init_reply ;

__attribute__((used)) static void fuse_send_init(struct fuse_conn *fc, struct fuse_req *req)
{
 struct fuse_init_in *arg = &req->misc.init_in;

 arg->major = FUSE_KERNEL_VERSION;
 arg->minor = FUSE_KERNEL_MINOR_VERSION;
 arg->max_readahead = fc->bdi.ra_pages * PAGE_CACHE_SIZE;
 arg->flags |= FUSE_ASYNC_READ | FUSE_POSIX_LOCKS | FUSE_ATOMIC_O_TRUNC |
  FUSE_EXPORT_SUPPORT | FUSE_BIG_WRITES | FUSE_DONT_MASK |
  FUSE_AUTO_INVAL_DATA | FUSE_DO_READDIRPLUS | FUSE_ASYNC_DIO;
 req->in.h.opcode = FUSE_INIT;
 req->in.numargs = 1;
 req->in.args[0].size = sizeof(*arg);
 req->in.args[0].value = arg;
 req->out.numargs = 1;



 req->out.argvar = 1;
 req->out.args[0].size = sizeof(struct fuse_init_out);
 req->out.args[0].value = &req->misc.init_out;
 req->end = process_init_reply;
 fuse_request_send_background(fc, req);
}
