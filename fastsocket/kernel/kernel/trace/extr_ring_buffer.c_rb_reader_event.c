
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ring_buffer_per_cpu {TYPE_1__* reader_page; } ;
struct ring_buffer_event {int dummy; } ;
struct TYPE_2__ {int read; } ;


 struct ring_buffer_event* __rb_page_index (TYPE_1__*,int ) ;

__attribute__((used)) static inline struct ring_buffer_event *
rb_reader_event(struct ring_buffer_per_cpu *cpu_buffer)
{
 return __rb_page_index(cpu_buffer->reader_page,
          cpu_buffer->reader_page->read);
}
