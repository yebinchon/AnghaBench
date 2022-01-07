
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct audit_context* audit_context; } ;
struct audit_context {scalar_t__ current_state; unsigned long long prio; scalar_t__ state; int* fds; int * filterkey; scalar_t__ type; scalar_t__ sockaddr_len; scalar_t__ target_sid; scalar_t__ target_pid; int * aux_pids; int * aux; struct audit_context* previous; int killed_trees; scalar_t__ in_syscall; } ;


 int AUDITSC_FAILURE ;
 int AUDITSC_SUCCESS ;
 scalar_t__ AUDIT_RECORD_CONTEXT ;
 int audit_free_aux (struct audit_context*) ;
 int audit_free_context (struct audit_context*) ;
 int audit_free_names (struct audit_context*) ;
 struct audit_context* audit_get_context (struct task_struct*,int,long) ;
 int audit_kill_trees (int *) ;
 int audit_log_exit (struct audit_context*,struct task_struct*) ;
 struct task_struct* current ;
 int kfree (int *) ;
 scalar_t__ likely (int) ;
 int list_empty (int *) ;
 int unroll_tree_refs (struct audit_context*,int *,int ) ;

void __audit_syscall_exit(int success, long return_code)
{
 struct task_struct *tsk = current;
 struct audit_context *context;

 if (success)
  success = AUDITSC_SUCCESS;
 else
  success = AUDITSC_FAILURE;

 context = audit_get_context(tsk, success, return_code);
 if (likely(!context))
  return;

 if (context->in_syscall && context->current_state == AUDIT_RECORD_CONTEXT)
  audit_log_exit(context, tsk);

 context->in_syscall = 0;
 context->prio = context->state == AUDIT_RECORD_CONTEXT ? ~0ULL : 0;

 if (!list_empty(&context->killed_trees))
  audit_kill_trees(&context->killed_trees);

 if (context->previous) {
  struct audit_context *new_context = context->previous;
  context->previous = ((void*)0);
  audit_free_context(context);
  tsk->audit_context = new_context;
 } else {
  audit_free_names(context);
  unroll_tree_refs(context, ((void*)0), 0);
  audit_free_aux(context);
  context->aux = ((void*)0);
  context->aux_pids = ((void*)0);
  context->target_pid = 0;
  context->target_sid = 0;
  context->sockaddr_len = 0;
  context->type = 0;
  context->fds[0] = -1;
  if (context->state != AUDIT_RECORD_CONTEXT) {
   kfree(context->filterkey);
   context->filterkey = ((void*)0);
  }
  tsk->audit_context = context;
 }
}
