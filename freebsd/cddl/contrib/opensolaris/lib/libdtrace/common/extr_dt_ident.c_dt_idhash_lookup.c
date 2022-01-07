
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t ulong_t ;
struct TYPE_6__ {size_t dh_hashsz; TYPE_2__** dh_hash; int * dh_tmpl; } ;
typedef TYPE_1__ dt_idhash_t ;
struct TYPE_7__ {int di_name; struct TYPE_7__* di_next; } ;
typedef TYPE_2__ dt_ident_t ;


 int dt_idhash_populate (TYPE_1__*) ;
 size_t dt_strtab_hash (char const*,size_t*) ;
 scalar_t__ strcmp (int ,char const*) ;

dt_ident_t *
dt_idhash_lookup(dt_idhash_t *dhp, const char *name)
{
 size_t len;
 ulong_t h = dt_strtab_hash(name, &len) % dhp->dh_hashsz;
 dt_ident_t *idp;

 if (dhp->dh_tmpl != ((void*)0))
  dt_idhash_populate(dhp);

 for (idp = dhp->dh_hash[h]; idp != ((void*)0); idp = idp->di_next) {
  if (strcmp(idp->di_name, name) == 0)
   return (idp);
 }

 return (((void*)0));
}
