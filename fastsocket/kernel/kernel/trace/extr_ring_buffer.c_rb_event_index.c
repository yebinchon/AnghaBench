
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_event {int dummy; } ;


 int BUF_PAGE_HDR_SIZE ;
 unsigned long PAGE_MASK ;

__attribute__((used)) static inline unsigned
rb_event_index(struct ring_buffer_event *event)
{
 unsigned long addr = (unsigned long)event;

 return (addr & ~PAGE_MASK) - BUF_PAGE_HDR_SIZE;
}
