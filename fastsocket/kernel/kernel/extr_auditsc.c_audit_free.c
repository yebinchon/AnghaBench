
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct audit_context {scalar_t__ current_state; int killed_trees; scalar_t__ in_syscall; } ;


 scalar_t__ AUDIT_RECORD_CONTEXT ;
 int audit_free_context (struct audit_context*) ;
 struct audit_context* audit_get_context (struct task_struct*,int ,int ) ;
 int audit_kill_trees (int *) ;
 int audit_log_exit (struct audit_context*,struct task_struct*) ;
 scalar_t__ likely (int) ;
 int list_empty (int *) ;

void audit_free(struct task_struct *tsk)
{
 struct audit_context *context;

 context = audit_get_context(tsk, 0, 0);
 if (likely(!context))
  return;






 if (context->in_syscall && context->current_state == AUDIT_RECORD_CONTEXT)
  audit_log_exit(context, tsk);
 if (!list_empty(&context->killed_trees))
  audit_kill_trees(&context->killed_trees);

 audit_free_context(context);
}
