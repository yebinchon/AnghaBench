
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dtrace_typeinfo_t ;
struct TYPE_4__ {scalar_t__ dt_errno; } ;
typedef TYPE_1__ dtrace_hdl_t ;


 int DTRACE_PROBESPEC_NONE ;
 int DT_CTX_DTYPE ;
 int dt_compile (TYPE_1__*,int ,int ,int *,int ,int ,int *,int *,char const*) ;

int
dtrace_type_strcompile(dtrace_hdl_t *dtp, const char *s, dtrace_typeinfo_t *dtt)
{
 (void) dt_compile(dtp, DT_CTX_DTYPE,
     DTRACE_PROBESPEC_NONE, dtt, 0, 0, ((void*)0), ((void*)0), s);
 return (dtp->dt_errno ? -1 : 0);
}
