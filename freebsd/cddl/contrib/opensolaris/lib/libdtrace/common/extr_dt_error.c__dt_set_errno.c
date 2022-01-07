
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dt_errno; char const* dt_errfile; int dt_errline; } ;
typedef TYPE_1__ dtrace_hdl_t ;



int
_dt_set_errno(dtrace_hdl_t *dtp, int err, const char *errfile, int errline)
{
 dtp->dt_errno = err;
 dtp->dt_errfile = errfile;
 dtp->dt_errline = errline;
 return (-1);
}
