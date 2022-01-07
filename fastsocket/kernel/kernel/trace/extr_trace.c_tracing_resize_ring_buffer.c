
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int use_max_tr; } ;
struct TYPE_5__ {unsigned long entries; int buffer; } ;
struct TYPE_4__ {unsigned long entries; int buffer; } ;


 int WARN_ON (int) ;
 TYPE_3__* current_trace ;
 TYPE_2__ global_trace ;
 TYPE_1__ max_tr ;
 int ring_buffer_expanded ;
 int ring_buffer_resize (int ,unsigned long) ;
 int tracing_disabled ;

__attribute__((used)) static int tracing_resize_ring_buffer(unsigned long size)
{
 int ret;






 ring_buffer_expanded = 1;

 ret = ring_buffer_resize(global_trace.buffer, size);
 if (ret < 0)
  return ret;

 if (!current_trace->use_max_tr)
  goto out;

 ret = ring_buffer_resize(max_tr.buffer, size);
 if (ret < 0) {
  int r;

  r = ring_buffer_resize(global_trace.buffer,
           global_trace.entries);
  if (r < 0) {
   WARN_ON(1);
   tracing_disabled = 1;
  }
  return ret;
 }

 max_tr.entries = size;
 out:
 global_trace.entries = size;

 return ret;
}
