
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dt_droptags; } ;
typedef TYPE_1__ dtrace_hdl_t ;



__attribute__((used)) static int
dt_opt_droptags(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 dtp->dt_droptags = 1;
 return (0);
}
