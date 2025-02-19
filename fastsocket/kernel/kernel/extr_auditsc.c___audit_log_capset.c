
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cred {int cap_permitted; int cap_effective; } ;
struct TYPE_4__ {int permitted; int inheritable; int effective; } ;
struct TYPE_5__ {TYPE_1__ cap; int pid; } ;
struct audit_context {int type; TYPE_2__ capset; } ;
typedef int pid_t ;
struct TYPE_6__ {struct audit_context* audit_context; } ;


 int AUDIT_CAPSET ;
 TYPE_3__* current ;

void __audit_log_capset(pid_t pid,
         const struct cred *new, const struct cred *old)
{
 struct audit_context *context = current->audit_context;
 context->capset.pid = pid;
 context->capset.cap.effective = new->cap_effective;
 context->capset.cap.inheritable = new->cap_effective;
 context->capset.cap.permitted = new->cap_permitted;
 context->type = AUDIT_CAPSET;
}
