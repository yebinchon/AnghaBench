
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vhost_work_fn_t ;
struct vhost_work {scalar_t__ done_seq; scalar_t__ queue_seq; scalar_t__ flushing; int done; int fn; int node; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;

__attribute__((used)) static void vhost_work_init(struct vhost_work *work, vhost_work_fn_t fn)
{
 INIT_LIST_HEAD(&work->node);
 work->fn = fn;
 init_waitqueue_head(&work->done);
 work->flushing = 0;
 work->queue_seq = work->done_seq = 0;
}
