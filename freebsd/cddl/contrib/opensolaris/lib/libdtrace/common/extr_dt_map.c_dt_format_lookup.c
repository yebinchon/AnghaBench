
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dt_maxformat; void** dt_formats; } ;
typedef TYPE_1__ dtrace_hdl_t ;



void *
dt_format_lookup(dtrace_hdl_t *dtp, int format)
{
 if (format == 0 || format > dtp->dt_maxformat)
  return (((void*)0));

 if (dtp->dt_formats == ((void*)0))
  return (((void*)0));

 return (dtp->dt_formats[format - 1]);
}
