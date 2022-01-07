
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int comm; int pid; } ;
struct audit_context {int target_comm; int target_sid; int target_sessionid; int target_uid; int target_auid; int target_pid; } ;
struct TYPE_2__ {struct audit_context* audit_context; } ;


 int TASK_COMM_LEN ;
 int audit_get_loginuid (struct task_struct*) ;
 int audit_get_sessionid (struct task_struct*) ;
 TYPE_1__* current ;
 int memcpy (int ,int ,int ) ;
 int security_task_getsecid (struct task_struct*,int *) ;
 int task_uid (struct task_struct*) ;

void __audit_ptrace(struct task_struct *t)
{
 struct audit_context *context = current->audit_context;

 context->target_pid = t->pid;
 context->target_auid = audit_get_loginuid(t);
 context->target_uid = task_uid(t);
 context->target_sessionid = audit_get_sessionid(t);
 security_task_getsecid(t, &context->target_sid);
 memcpy(context->target_comm, t->comm, TASK_COMM_LEN);
}
