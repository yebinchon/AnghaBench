
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_namespace {struct pid_namespace* parent; } ;


 int acct_process_in_ns (struct pid_namespace*) ;
 int current ;
 struct pid_namespace* task_active_pid_ns (int ) ;

void acct_process(void)
{
 struct pid_namespace *ns;






 for (ns = task_active_pid_ns(current); ns != ((void*)0); ns = ns->parent)
  acct_process_in_ns(ns);
}
