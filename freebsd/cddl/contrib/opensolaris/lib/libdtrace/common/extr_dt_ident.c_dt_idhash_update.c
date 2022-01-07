
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ulong_t ;
typedef int uint_t ;
struct TYPE_4__ {size_t dh_hashsz; int dh_nextid; TYPE_2__** dh_hash; int dh_minid; } ;
typedef TYPE_1__ dt_idhash_t ;
struct TYPE_5__ {scalar_t__ di_kind; scalar_t__ di_id; struct TYPE_5__* di_next; } ;
typedef TYPE_2__ dt_ident_t ;


 scalar_t__ DT_IDENT_AGG ;
 scalar_t__ DT_IDENT_ARRAY ;
 scalar_t__ DT_IDENT_SCALAR ;
 int MAX (int ,scalar_t__) ;

void
dt_idhash_update(dt_idhash_t *dhp)
{
 uint_t nextid = dhp->dh_minid;
 dt_ident_t *idp;
 ulong_t i;

 for (i = 0; i < dhp->dh_hashsz; i++) {
  for (idp = dhp->dh_hash[i]; idp != ((void*)0); idp = idp->di_next) {




   if (idp->di_kind == DT_IDENT_ARRAY ||
       idp->di_kind == DT_IDENT_SCALAR ||
       idp->di_kind == DT_IDENT_AGG)
    nextid = MAX(nextid, idp->di_id + 1);
  }
 }

 dhp->dh_nextid = nextid;
}
