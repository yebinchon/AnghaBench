
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* dt_provmod; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_5__ {char* dp_name; struct TYPE_5__* dp_next; } ;
typedef TYPE_2__ dt_provmod_t ;



int
dtrace_provider_modules(dtrace_hdl_t *dtp, const char **mods, int nmods)
{
 dt_provmod_t *prov;
 int i = 0;

 for (prov = dtp->dt_provmod; prov != ((void*)0); prov = prov->dp_next, i++) {
  if (i < nmods)
   mods[i] = prov->dp_name;
 }

 return (i);
}
