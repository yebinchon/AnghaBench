
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_hdl_t ;


 int assert (int ) ;
 int free (void*) ;

void
dt_free(dtrace_hdl_t *dtp, void *data)
{
 assert(dtp != ((void*)0));
 free(data);
}
