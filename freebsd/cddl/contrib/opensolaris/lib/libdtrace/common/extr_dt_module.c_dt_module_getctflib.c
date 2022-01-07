
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
struct TYPE_3__ {int dm_nctflibs; int ** dm_libctfp; int * dm_libctfn; } ;
typedef TYPE_1__ dt_module_t ;
typedef int ctf_file_t ;


 scalar_t__ strcmp (int ,char const*) ;

ctf_file_t *
dt_module_getctflib(dtrace_hdl_t *dtp, dt_module_t *dmp, const char *name)
{
 int i;

 for (i = 0; i < dmp->dm_nctflibs; i++) {
  if (strcmp(dmp->dm_libctfn[i], name) == 0)
   return (dmp->dm_libctfp[i]);
 }

 return (((void*)0));
}
