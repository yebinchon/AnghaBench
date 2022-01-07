
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call_type {int name; } ;
struct afs_call {size_t request_size; size_t reply_max; int rx_queue; int waitq; void* buffer; void* request; struct afs_call_type const* type; } ;


 int GFP_NOFS ;
 int _debug (char*,struct afs_call*,int ,int ) ;
 int afs_free_call (struct afs_call*) ;
 int afs_outstanding_calls ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int init_waitqueue_head (int *) ;
 void* kmalloc (size_t,int ) ;
 struct afs_call* kzalloc (int,int ) ;
 int skb_queue_head_init (int *) ;

struct afs_call *afs_alloc_flat_call(const struct afs_call_type *type,
         size_t request_size, size_t reply_size)
{
 struct afs_call *call;

 call = kzalloc(sizeof(*call), GFP_NOFS);
 if (!call)
  goto nomem_call;

 _debug("CALL %p{%s} [%d]",
        call, type->name, atomic_read(&afs_outstanding_calls));
 atomic_inc(&afs_outstanding_calls);

 call->type = type;
 call->request_size = request_size;
 call->reply_max = reply_size;

 if (request_size) {
  call->request = kmalloc(request_size, GFP_NOFS);
  if (!call->request)
   goto nomem_free;
 }

 if (reply_size) {
  call->buffer = kmalloc(reply_size, GFP_NOFS);
  if (!call->buffer)
   goto nomem_free;
 }

 init_waitqueue_head(&call->waitq);
 skb_queue_head_init(&call->rx_queue);
 return call;

nomem_free:
 afs_free_call(call);
nomem_call:
 return ((void*)0);
}
