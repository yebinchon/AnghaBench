
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {struct audit_context* audit_context; } ;
struct audit_context {scalar_t__ current_state; int prio; int ppid; int filterkey; scalar_t__ in_syscall; int dummy; int ctime; int argv; int major; int arch; } ;
struct TYPE_2__ {int pid; struct audit_context* audit_context; } ;


 scalar_t__ AUDIT_RECORD_CONTEXT ;
 int GFP_KERNEL ;
 TYPE_1__* current ;
 int kstrdup (int ,int ) ;
 int memcpy (int ,int ,int) ;

void audit_finish_fork(struct task_struct *child)
{
 struct audit_context *ctx = current->audit_context;
 struct audit_context *p = child->audit_context;
 if (!p || !ctx)
  return;
 if (!ctx->in_syscall || ctx->current_state != AUDIT_RECORD_CONTEXT)
  return;
 p->arch = ctx->arch;
 p->major = ctx->major;
 memcpy(p->argv, ctx->argv, sizeof(ctx->argv));
 p->ctime = ctx->ctime;
 p->dummy = ctx->dummy;
 p->in_syscall = ctx->in_syscall;
 p->filterkey = kstrdup(ctx->filterkey, GFP_KERNEL);
 p->ppid = current->pid;
 p->prio = ctx->prio;
 p->current_state = ctx->current_state;
}
