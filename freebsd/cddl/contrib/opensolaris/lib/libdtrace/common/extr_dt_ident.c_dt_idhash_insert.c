
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ushort_t ;
typedef size_t ulong_t ;
typedef int uint_t ;
typedef int dtrace_attribute_t ;
typedef int dt_idops_t ;
struct TYPE_9__ {size_t dh_hashsz; int (* dh_defer ) (TYPE_1__*,TYPE_2__*) ;int dh_nelems; TYPE_2__** dh_hash; int * dh_tmpl; } ;
typedef TYPE_1__ dt_idhash_t ;
struct TYPE_10__ {struct TYPE_10__* di_next; } ;
typedef TYPE_2__ dt_ident_t ;


 TYPE_2__* dt_ident_create (char const*,int ,int ,int ,int ,int ,int const*,void*,size_t) ;
 int dt_idhash_populate (TYPE_1__*) ;
 size_t dt_strtab_hash (char const*,int *) ;
 int stub1 (TYPE_1__*,TYPE_2__*) ;

dt_ident_t *
dt_idhash_insert(dt_idhash_t *dhp, const char *name, ushort_t kind,
    ushort_t flags, uint_t id, dtrace_attribute_t attr, uint_t vers,
    const dt_idops_t *ops, void *iarg, ulong_t gen)
{
 dt_ident_t *idp;
 ulong_t h;

 if (dhp->dh_tmpl != ((void*)0))
  dt_idhash_populate(dhp);

 idp = dt_ident_create(name, kind, flags, id,
     attr, vers, ops, iarg, gen);

 if (idp == ((void*)0))
  return (((void*)0));

 h = dt_strtab_hash(name, ((void*)0)) % dhp->dh_hashsz;
 idp->di_next = dhp->dh_hash[h];

 dhp->dh_hash[h] = idp;
 dhp->dh_nelems++;

 if (dhp->dh_defer != ((void*)0))
  dhp->dh_defer(dhp, idp);

 return (idp);
}
