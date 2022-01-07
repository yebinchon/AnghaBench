
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_hdl_t ;


 int EDT_NOMEM ;
 int dt_set_errno (int *,int ) ;
 void* malloc (size_t) ;

void *
dt_alloc(dtrace_hdl_t *dtp, size_t size)
{
 void *data;

 if ((data = malloc(size)) == ((void*)0))
  (void) dt_set_errno(dtp, EDT_NOMEM);

 return (data);
}
