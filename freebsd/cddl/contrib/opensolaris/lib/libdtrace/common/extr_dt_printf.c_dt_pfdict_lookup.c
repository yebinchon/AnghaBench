
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint_t ;
struct TYPE_6__ {TYPE_2__* dt_pfdict; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_7__ {size_t pdi_nbuckets; TYPE_3__** pdi_buckets; } ;
typedef TYPE_2__ dt_pfdict_t ;
struct TYPE_8__ {int pfc_name; struct TYPE_8__* pfc_next; } ;
typedef TYPE_3__ dt_pfconv_t ;


 size_t dt_strtab_hash (char const*,int *) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static const dt_pfconv_t *
dt_pfdict_lookup(dtrace_hdl_t *dtp, const char *name)
{
 dt_pfdict_t *pdi = dtp->dt_pfdict;
 uint_t h = dt_strtab_hash(name, ((void*)0)) % pdi->pdi_nbuckets;
 const dt_pfconv_t *pfc;

 for (pfc = pdi->pdi_buckets[h]; pfc != ((void*)0); pfc = pfc->pfc_next) {
  if (strcmp(pfc->pfc_name, name) == 0)
   break;
 }

 return (pfc);
}
