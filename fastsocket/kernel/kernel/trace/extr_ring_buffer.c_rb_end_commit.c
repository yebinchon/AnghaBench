
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int committing; int commits; } ;


 scalar_t__ RB_WARN_ON (struct ring_buffer_per_cpu*,int) ;
 int barrier () ;
 int local_dec (int *) ;
 int local_inc (int *) ;
 unsigned long local_read (int *) ;
 int rb_set_commit_to_write (struct ring_buffer_per_cpu*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void rb_end_commit(struct ring_buffer_per_cpu *cpu_buffer)
{
 unsigned long commits;

 if (RB_WARN_ON(cpu_buffer,
         !local_read(&cpu_buffer->committing)))
  return;

 again:
 commits = local_read(&cpu_buffer->commits);

 barrier();
 if (local_read(&cpu_buffer->committing) == 1)
  rb_set_commit_to_write(cpu_buffer);

 local_dec(&cpu_buffer->committing);


 barrier();






 if (unlikely(local_read(&cpu_buffer->commits) != commits) &&
     !local_read(&cpu_buffer->committing)) {
  local_inc(&cpu_buffer->committing);
  goto again;
 }
}
