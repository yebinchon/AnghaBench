
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pid; int gid; int uid; } ;
struct TYPE_5__ {TYPE_1__ h; } ;
struct fuse_req {TYPE_2__ in; } ;
struct TYPE_6__ {int pid; } ;


 TYPE_3__* current ;
 int current_fsgid () ;
 int current_fsuid () ;

__attribute__((used)) static void fuse_req_init_context(struct fuse_req *req)
{
 req->in.h.uid = current_fsuid();
 req->in.h.gid = current_fsgid();
 req->in.h.pid = current->pid;
}
