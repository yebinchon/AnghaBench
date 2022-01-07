
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int dummy; } ;
struct buffer_page {int dummy; } ;


 unsigned long RB_FLAG_MASK ;
 scalar_t__ RB_WARN_ON (struct ring_buffer_per_cpu*,unsigned long) ;

__attribute__((used)) static int rb_check_bpage(struct ring_buffer_per_cpu *cpu_buffer,
     struct buffer_page *bpage)
{
 unsigned long val = (unsigned long)bpage;

 if (RB_WARN_ON(cpu_buffer, val & RB_FLAG_MASK))
  return 1;

 return 0;
}
