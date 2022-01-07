
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int ftrace_lock ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void fpid_stop(struct seq_file *m, void *p)
{
 mutex_unlock(&ftrace_lock);
}
