
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long flags; int fast_work; } ;
struct fscache_retrieval {TYPE_1__ op; int to_do; int start_time; void* context; int end_io_func; struct address_space* mapping; } ;
struct fscache_cookie {int n_active; } ;
struct address_space {int dummy; } ;
typedef int fscache_rw_complete_t ;


 unsigned long FSCACHE_OP_MYTHREAD ;
 unsigned long FSCACHE_OP_UNUSE_COOKIE ;
 unsigned long FSCACHE_OP_WAITING ;
 int GFP_NOIO ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int atomic_inc (int *) ;
 int fscache_n_retrievals_nomem ;
 int fscache_operation_init (TYPE_1__*,int ) ;
 int fscache_release_retrieval_op ;
 int fscache_retrieval_work ;
 int fscache_set_op_name (TYPE_1__*,char*) ;
 int fscache_stat (int *) ;
 int jiffies ;
 struct fscache_retrieval* kzalloc (int,int ) ;

__attribute__((used)) static struct fscache_retrieval *fscache_alloc_retrieval(
 struct fscache_cookie *cookie,
 struct address_space *mapping,
 fscache_rw_complete_t end_io_func,
 void *context)
{
 struct fscache_retrieval *op;


 op = kzalloc(sizeof(*op), GFP_NOIO);
 if (!op) {
  fscache_stat(&fscache_n_retrievals_nomem);
  return ((void*)0);
 }

 fscache_operation_init(&op->op, fscache_release_retrieval_op);
 atomic_inc(&cookie->n_active);
 op->op.flags = FSCACHE_OP_MYTHREAD |
  (1UL << FSCACHE_OP_WAITING) |
  (1UL << FSCACHE_OP_UNUSE_COOKIE);
 op->mapping = mapping;
 op->end_io_func = end_io_func;
 op->context = context;
 op->start_time = jiffies;
 INIT_WORK(&op->op.fast_work, fscache_retrieval_work);
 INIT_LIST_HEAD(&op->to_do);
 fscache_set_op_name(&op->op, "Retr");
 return op;
}
