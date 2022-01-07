
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_hdl_t ;


 int dtrace_close (int *) ;

__attribute__((used)) static dtrace_hdl_t *
set_open_errno(dtrace_hdl_t *dtp, int *errp, int err)
{
 if (dtp != ((void*)0))
  dtrace_close(dtp);
 if (errp != ((void*)0))
  *errp = err;
 return (((void*)0));
}
