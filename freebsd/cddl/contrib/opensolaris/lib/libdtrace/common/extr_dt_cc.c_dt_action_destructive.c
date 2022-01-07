
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dtad_kind; TYPE_1__* dtad_difo; } ;
typedef TYPE_2__ dtrace_actdesc_t ;
struct TYPE_4__ {scalar_t__ dtdo_destructive; } ;


 scalar_t__ DTRACEACT_DIFEXPR ;
 scalar_t__ DTRACEACT_ISDESTRUCTIVE (scalar_t__) ;

__attribute__((used)) static int
dt_action_destructive(const dtrace_actdesc_t *ap)
{
 return (DTRACEACT_ISDESTRUCTIVE(ap->dtad_kind) || (ap->dtad_kind ==
     DTRACEACT_DIFEXPR && ap->dtad_difo->dtdo_destructive));
}
