
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t ulong_t ;
struct TYPE_8__ {size_t dh_hashsz; int (* dh_defer ) (TYPE_1__*,TYPE_2__*) ;int dh_nelems; TYPE_2__** dh_hash; int * dh_tmpl; } ;
typedef TYPE_1__ dt_idhash_t ;
struct TYPE_9__ {int di_flags; struct TYPE_9__* di_next; int di_name; } ;
typedef TYPE_2__ dt_ident_t ;


 int DT_IDFLG_ORPHAN ;
 int dt_idhash_populate (TYPE_1__*) ;
 size_t dt_strtab_hash (int ,int *) ;
 int stub1 (TYPE_1__*,TYPE_2__*) ;

void
dt_idhash_xinsert(dt_idhash_t *dhp, dt_ident_t *idp)
{
 ulong_t h;

 if (dhp->dh_tmpl != ((void*)0))
  dt_idhash_populate(dhp);

 h = dt_strtab_hash(idp->di_name, ((void*)0)) % dhp->dh_hashsz;
 idp->di_next = dhp->dh_hash[h];
 idp->di_flags &= ~DT_IDFLG_ORPHAN;

 dhp->dh_hash[h] = idp;
 dhp->dh_nelems++;

 if (dhp->dh_defer != ((void*)0))
  dhp->dh_defer(dhp, idp);
}
