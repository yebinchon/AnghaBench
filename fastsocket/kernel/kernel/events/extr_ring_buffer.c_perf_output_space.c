
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int writable; } ;


 int perf_data_size (struct ring_buffer*) ;

__attribute__((used)) static bool perf_output_space(struct ring_buffer *rb, unsigned long tail,
         unsigned long offset, unsigned long head)
{
 unsigned long mask;

 if (!rb->writable)
  return 1;

 mask = perf_data_size(rb) - 1;

 offset = (offset - tail) & mask;
 head = (head - tail) & mask;

 if ((int)(head - offset) < 0)
  return 0;

 return 1;
}
