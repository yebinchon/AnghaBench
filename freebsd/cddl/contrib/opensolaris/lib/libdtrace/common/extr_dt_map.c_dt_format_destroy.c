
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dt_maxformat; int ** dt_formats; } ;
typedef TYPE_1__ dtrace_hdl_t ;


 int dt_printf_destroy (int *) ;
 int free (int **) ;

void
dt_format_destroy(dtrace_hdl_t *dtp)
{
 int i;

 for (i = 0; i < dtp->dt_maxformat; i++) {
  if (dtp->dt_formats[i] != ((void*)0))
   dt_printf_destroy(dtp->dt_formats[i]);
 }

 free(dtp->dt_formats);
 dtp->dt_formats = ((void*)0);
}
