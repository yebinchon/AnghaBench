
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* dt_errfile; int dt_errline; } ;
typedef TYPE_1__ dtrace_hdl_t ;



void dt_get_errloc(dtrace_hdl_t *dtp, const char **p_errfile, int *p_errline)
{
 *p_errfile = dtp->dt_errfile;
 *p_errline = dtp->dt_errline;
}
