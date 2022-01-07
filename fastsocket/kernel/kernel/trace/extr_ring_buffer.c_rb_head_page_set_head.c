
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int dummy; } ;
struct buffer_page {int dummy; } ;


 int RB_PAGE_HEAD ;
 int rb_head_page_set (struct ring_buffer_per_cpu*,struct buffer_page*,struct buffer_page*,int,int ) ;

__attribute__((used)) static int rb_head_page_set_head(struct ring_buffer_per_cpu *cpu_buffer,
     struct buffer_page *head,
     struct buffer_page *prev,
     int old_flag)
{
 return rb_head_page_set(cpu_buffer, head, prev,
    old_flag, RB_PAGE_HEAD);
}
