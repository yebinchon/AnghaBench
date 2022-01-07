
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nargs; int args; } ;
struct audit_context {TYPE_1__ socketcall; int type; scalar_t__ dummy; } ;
struct TYPE_4__ {struct audit_context* audit_context; } ;


 int AUDIT_SOCKETCALL ;
 TYPE_2__* current ;
 scalar_t__ likely (int) ;
 int memcpy (int ,unsigned long*,int) ;

void audit_socketcall(int nargs, unsigned long *args)
{
 struct audit_context *context = current->audit_context;

 if (likely(!context || context->dummy))
  return;

 context->type = AUDIT_SOCKETCALL;
 context->socketcall.nargs = nargs;
 memcpy(context->socketcall.args, args, nargs * sizeof(unsigned long));
}
