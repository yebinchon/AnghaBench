
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rchan_buf {void* start; } ;
struct TYPE_4__ {int data; int buf; } ;
struct TYPE_5__ {int written; int count; TYPE_1__ arg; int error; } ;
typedef TYPE_2__ read_descriptor_t ;
typedef int read_actor_t ;


 int EFAULT ;
 scalar_t__ copy_to_user (int ,void*,size_t) ;

__attribute__((used)) static int subbuf_read_actor(size_t read_start,
        struct rchan_buf *buf,
        size_t avail,
        read_descriptor_t *desc,
        read_actor_t actor)
{
 void *from;
 int ret = 0;

 from = buf->start + read_start;
 ret = avail;
 if (copy_to_user(desc->arg.buf, from, avail)) {
  desc->error = -EFAULT;
  ret = 0;
 }
 desc->arg.data += ret;
 desc->written += ret;
 desc->count -= ret;

 return ret;
}
