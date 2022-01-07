
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct svc_rqst {int rq_server; } ;
struct TYPE_4__ {int * fl_lmops; int fl_flags; } ;
struct TYPE_5__ {TYPE_1__ fl; } ;
struct TYPE_6__ {int cookie; TYPE_2__ lock; } ;
struct nlm_rqst {struct nlm_block* a_block; int a_flags; TYPE_3__ a_args; } ;
struct nlm_lock {int dummy; } ;
struct nlm_host {int dummy; } ;
struct nlm_file {int f_blocks; int f_count; } ;
struct nlm_cookie {int dummy; } ;
struct nlm_block {struct nlm_rqst* b_call; int b_flist; int * b_fl; struct nlm_file* b_file; struct nlm_host* b_host; int b_daemon; int b_list; int b_count; } ;


 int FL_SLEEP ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RPC_TASK_ASYNC ;
 int dprintk (char*,struct nlm_block*) ;
 int kfree (struct nlm_block*) ;
 int kref_init (int *) ;
 struct nlm_block* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 struct nlm_rqst* nlm_alloc_call (struct nlm_host*) ;
 int nlm_get_host (struct nlm_host*) ;
 int nlm_release_call (struct nlm_rqst*) ;
 int nlmclnt_next_cookie (int *) ;
 int nlmsvc_lock_operations ;
 int nlmsvc_setgrantargs (struct nlm_rqst*,struct nlm_lock*) ;

__attribute__((used)) static struct nlm_block *
nlmsvc_create_block(struct svc_rqst *rqstp, struct nlm_host *host,
      struct nlm_file *file, struct nlm_lock *lock,
      struct nlm_cookie *cookie)
{
 struct nlm_block *block;
 struct nlm_rqst *call = ((void*)0);

 nlm_get_host(host);
 call = nlm_alloc_call(host);
 if (call == ((void*)0))
  return ((void*)0);


 block = kzalloc(sizeof(*block), GFP_KERNEL);
 if (block == ((void*)0))
  goto failed;
 kref_init(&block->b_count);
 INIT_LIST_HEAD(&block->b_list);
 INIT_LIST_HEAD(&block->b_flist);

 if (!nlmsvc_setgrantargs(call, lock))
  goto failed_free;


 call->a_args.lock.fl.fl_flags |= FL_SLEEP;
 call->a_args.lock.fl.fl_lmops = &nlmsvc_lock_operations;
 nlmclnt_next_cookie(&call->a_args.cookie);

 dprintk("lockd: created block %p...\n", block);


 block->b_daemon = rqstp->rq_server;
 block->b_host = host;
 block->b_file = file;
 block->b_fl = ((void*)0);
 file->f_count++;


 list_add(&block->b_flist, &file->f_blocks);


 block->b_call = call;
 call->a_flags = RPC_TASK_ASYNC;
 call->a_block = block;

 return block;

failed_free:
 kfree(block);
failed:
 nlm_release_call(call);
 return ((void*)0);
}
