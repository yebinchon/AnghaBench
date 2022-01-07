
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct TYPE_2__ {struct ring_buffer* buffer; } ;


 TYPE_1__ global_trace ;
 struct ring_buffer_event* trace_buffer_lock_reserve (struct ring_buffer*,int,unsigned long,unsigned long,int) ;

struct ring_buffer_event *
trace_current_buffer_lock_reserve(struct ring_buffer **current_rb,
      int type, unsigned long len,
      unsigned long flags, int pc)
{
 *current_rb = global_trace.buffer;
 return trace_buffer_lock_reserve(*current_rb,
      type, len, flags, pc);
}
