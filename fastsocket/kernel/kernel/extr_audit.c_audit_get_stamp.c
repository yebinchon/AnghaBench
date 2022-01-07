
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct audit_context {int dummy; } ;


 struct timespec CURRENT_TIME ;
 unsigned int audit_serial () ;
 int auditsc_get_stamp (struct audit_context*,struct timespec*,unsigned int*) ;

__attribute__((used)) static inline void audit_get_stamp(struct audit_context *ctx,
       struct timespec *t, unsigned int *serial)
{
 if (!ctx || !auditsc_get_stamp(ctx, t, serial)) {
  *t = CURRENT_TIME;
  *serial = audit_serial();
 }
}
