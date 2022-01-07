
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t ulong_t ;
struct TYPE_8__ {size_t dh_hashsz; struct TYPE_8__* di_name; struct TYPE_8__* di_next; struct TYPE_8__** dh_hash; TYPE_1__* di_ops; } ;
typedef TYPE_2__ dt_idhash_t ;
typedef TYPE_2__ dt_ident_t ;
struct TYPE_7__ {int (* di_dtor ) (TYPE_2__*) ;} ;


 int free (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

void
dt_idhash_destroy(dt_idhash_t *dhp)
{
 dt_ident_t *idp, *next;
 ulong_t i;

 for (i = 0; i < dhp->dh_hashsz; i++) {
  for (idp = dhp->dh_hash[i]; idp != ((void*)0); idp = next) {
   next = idp->di_next;
   idp->di_ops->di_dtor(idp);
  }
 }

 for (i = 0; i < dhp->dh_hashsz; i++) {
  for (idp = dhp->dh_hash[i]; idp != ((void*)0); idp = next) {
   next = idp->di_next;
   free(idp->di_name);
   free(idp);
  }
 }

 free(dhp);
}
