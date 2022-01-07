
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dt_maxstrdata; char const** dt_strdata; } ;
typedef TYPE_1__ dtrace_hdl_t ;



const char *
dt_strdata_lookup(dtrace_hdl_t *dtp, int idx)
{
 if (idx == 0 || idx > dtp->dt_maxstrdata)
  return (((void*)0));

 if (dtp->dt_strdata == ((void*)0))
  return (((void*)0));

 return (dtp->dt_strdata[idx - 1]);
}
