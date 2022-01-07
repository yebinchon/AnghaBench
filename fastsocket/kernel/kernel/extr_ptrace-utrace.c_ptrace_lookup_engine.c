
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace_engine {int dummy; } ;
struct task_struct {int dummy; } ;


 int UTRACE_ATTACH_MATCH_OPS ;
 int ptrace_utrace_ops ;
 struct utrace_engine* utrace_attach_task (struct task_struct*,int ,int *,int *) ;

__attribute__((used)) static struct utrace_engine *ptrace_lookup_engine(struct task_struct *tracee)
{
 return utrace_attach_task(tracee, UTRACE_ATTACH_MATCH_OPS,
     &ptrace_utrace_ops, ((void*)0));
}
