
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_iter {int head; int head_page; } ;
struct ring_buffer_event {int dummy; } ;


 struct ring_buffer_event* __rb_page_index (int ,int ) ;

__attribute__((used)) static inline struct ring_buffer_event *
rb_iter_head_event(struct ring_buffer_iter *iter)
{
 return __rb_page_index(iter->head_page, iter->head);
}
