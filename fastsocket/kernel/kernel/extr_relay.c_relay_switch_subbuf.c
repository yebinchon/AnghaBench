
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rchan_buf {int offset; int prev_padding; size_t subbufs_produced; int* padding; TYPE_4__* chan; void* data; void* start; int timer; int read_wait; int early_bytes; TYPE_2__* dentry; } ;
struct TYPE_8__ {size_t subbuf_size; size_t n_subbufs; size_t last_toobig; TYPE_3__* cb; } ;
struct TYPE_7__ {int (* subbuf_start ) (struct rchan_buf*,void*,void*,int) ;} ;
struct TYPE_6__ {TYPE_1__* d_inode; } ;
struct TYPE_5__ {int i_size; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int smp_mb () ;
 int stub1 (struct rchan_buf*,void*,void*,int) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ waitqueue_active (int *) ;

size_t relay_switch_subbuf(struct rchan_buf *buf, size_t length)
{
 void *old, *new;
 size_t old_subbuf, new_subbuf;

 if (unlikely(length > buf->chan->subbuf_size))
  goto toobig;

 if (buf->offset != buf->chan->subbuf_size + 1) {
  buf->prev_padding = buf->chan->subbuf_size - buf->offset;
  old_subbuf = buf->subbufs_produced % buf->chan->n_subbufs;
  buf->padding[old_subbuf] = buf->prev_padding;
  buf->subbufs_produced++;
  if (buf->dentry)
   buf->dentry->d_inode->i_size +=
    buf->chan->subbuf_size -
    buf->padding[old_subbuf];
  else
   buf->early_bytes += buf->chan->subbuf_size -
         buf->padding[old_subbuf];
  smp_mb();
  if (waitqueue_active(&buf->read_wait))






   mod_timer(&buf->timer, jiffies + 1);
 }

 old = buf->data;
 new_subbuf = buf->subbufs_produced % buf->chan->n_subbufs;
 new = buf->start + new_subbuf * buf->chan->subbuf_size;
 buf->offset = 0;
 if (!buf->chan->cb->subbuf_start(buf, new, old, buf->prev_padding)) {
  buf->offset = buf->chan->subbuf_size + 1;
  return 0;
 }
 buf->data = new;
 buf->padding[new_subbuf] = 0;

 if (unlikely(length + buf->offset > buf->chan->subbuf_size))
  goto toobig;

 return length;

toobig:
 buf->chan->last_toobig = length;
 return 0;
}
