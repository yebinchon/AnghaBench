
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_file {scalar_t__ kh; int poll_wait; int polled_node; int count; int write_entry; int reserved_req; struct fuse_conn* fc; } ;
struct fuse_conn {int lock; scalar_t__ khctr; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RB_CLEAR_NODE (int *) ;
 int atomic_set (int *,int ) ;
 int fuse_request_alloc (int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct fuse_file*) ;
 struct fuse_file* kmalloc (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

struct fuse_file *fuse_file_alloc(struct fuse_conn *fc)
{
 struct fuse_file *ff;

 ff = kmalloc(sizeof(struct fuse_file), GFP_KERNEL);
 if (unlikely(!ff))
  return ((void*)0);

 ff->fc = fc;
 ff->reserved_req = fuse_request_alloc(0);
 if (unlikely(!ff->reserved_req)) {
  kfree(ff);
  return ((void*)0);
 }

 INIT_LIST_HEAD(&ff->write_entry);
 atomic_set(&ff->count, 0);
 RB_CLEAR_NODE(&ff->polled_node);
 init_waitqueue_head(&ff->poll_wait);

 spin_lock(&fc->lock);
 ff->kh = ++fc->khctr;
 spin_unlock(&fc->lock);

 return ff;
}
