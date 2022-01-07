
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int ftrace_lock ;
 int ftrace_pids ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 void* seq_list_start (int *,int ) ;

__attribute__((used)) static void *fpid_start(struct seq_file *m, loff_t *pos)
{
 mutex_lock(&ftrace_lock);

 if (list_empty(&ftrace_pids) && (!*pos))
  return (void *) 1;

 return seq_list_start(&ftrace_pids, *pos);
}
