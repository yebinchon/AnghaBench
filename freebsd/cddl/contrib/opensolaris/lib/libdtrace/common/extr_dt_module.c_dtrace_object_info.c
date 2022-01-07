
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_objinfo_t ;
typedef int dtrace_hdl_t ;
typedef int dt_module_t ;


 char const* DTRACE_OBJ_EVERY ;
 char const* DTRACE_OBJ_KMODS ;
 char const* DTRACE_OBJ_UMODS ;
 int EINVAL ;
 int * dt_module_from_object (int *,char const*) ;
 int dt_module_info (int *,int *) ;
 int dt_module_load (int *,int *) ;
 int dt_set_errno (int *,int ) ;

int
dtrace_object_info(dtrace_hdl_t *dtp, const char *object, dtrace_objinfo_t *dto)
{
 dt_module_t *dmp;

 if (object == DTRACE_OBJ_EVERY || object == DTRACE_OBJ_KMODS ||
     object == DTRACE_OBJ_UMODS || dto == ((void*)0))
  return (dt_set_errno(dtp, EINVAL));

 if ((dmp = dt_module_from_object(dtp, object)) == ((void*)0))
  return (-1);

 if (dt_module_load(dtp, dmp) == -1)
  return (-1);

 (void) dt_module_info(dmp, dto);
 return (0);
}
