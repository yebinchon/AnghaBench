
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int tv_nsec; int tv_sec; } ;
struct TYPE_2__ {int tv_nsec; int tv_sec; } ;
struct audit_context {unsigned int serial; int prio; int current_state; TYPE_1__ ctime; int in_syscall; } ;


 int AUDIT_RECORD_CONTEXT ;
 unsigned int audit_serial () ;

int auditsc_get_stamp(struct audit_context *ctx,
         struct timespec *t, unsigned int *serial)
{
 if (!ctx->in_syscall)
  return 0;
 if (!ctx->serial)
  ctx->serial = audit_serial();
 t->tv_sec = ctx->ctime.tv_sec;
 t->tv_nsec = ctx->ctime.tv_nsec;
 *serial = ctx->serial;
 if (!ctx->prio) {
  ctx->prio = 1;
  ctx->current_state = AUDIT_RECORD_CONTEXT;
 }
 return 1;
}
