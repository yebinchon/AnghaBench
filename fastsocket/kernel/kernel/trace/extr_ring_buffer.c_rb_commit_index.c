
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int commit_page; } ;


 int rb_page_commit (int ) ;

__attribute__((used)) static inline unsigned
rb_commit_index(struct ring_buffer_per_cpu *cpu_buffer)
{
 return rb_page_commit(cpu_buffer->commit_page);
}
