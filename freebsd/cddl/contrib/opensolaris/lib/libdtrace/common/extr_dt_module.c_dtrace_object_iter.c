
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int dtrace_objinfo_t ;
typedef int (* dtrace_obj_f ) (TYPE_1__*,int ,void*) ;
struct TYPE_6__ {int const dt_modlist; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef int dt_module_t ;


 int * dt_list_next (int const*) ;
 int dt_module_info (int const*,int *) ;
 int stub1 (TYPE_1__*,int ,void*) ;

int
dtrace_object_iter(dtrace_hdl_t *dtp, dtrace_obj_f *func, void *data)
{
 const dt_module_t *dmp = dt_list_next(&dtp->dt_modlist);
 dtrace_objinfo_t dto;
 int rv;

 for (; dmp != ((void*)0); dmp = dt_list_next(dmp)) {
  if ((rv = (*func)(dtp, dt_module_info(dmp, &dto), data)) != 0)
   return (rv);
 }

 return (0);
}
