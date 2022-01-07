
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int ftrace_pids ;
 void* seq_list_next (void*,int *,int *) ;

__attribute__((used)) static void *fpid_next(struct seq_file *m, void *v, loff_t *pos)
{
 if (v == (void *)1)
  return ((void*)0);

 return seq_list_next(v, &ftrace_pids, pos);
}
