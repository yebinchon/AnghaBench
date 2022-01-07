
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
struct TYPE_3__ {int dm_nctflibs; int const** dm_libctfp; } ;
typedef TYPE_1__ dt_module_t ;
typedef int ctf_file_t ;



int
dt_module_getlibid(dtrace_hdl_t *dtp, dt_module_t *dmp, const ctf_file_t *fp)
{
 int i;

 for (i = 0; i < dmp->dm_nctflibs; i++) {
  if (dmp->dm_libctfp[i] == fp)
   return (i);
 }

 return (-1);
}
