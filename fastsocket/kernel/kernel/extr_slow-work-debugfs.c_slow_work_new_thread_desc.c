
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slow_work {int dummy; } ;
struct seq_file {int dummy; } ;


 int seq_puts (struct seq_file*,char*) ;

void slow_work_new_thread_desc(struct slow_work *work, struct seq_file *m)
{
 seq_puts(m, "Slow-work: New thread");
}
