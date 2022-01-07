
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dids_list; } ;
typedef TYPE_1__ dt_idstack_t ;
typedef int dt_idhash_t ;
typedef int dt_ident_t ;


 int * dt_idhash_lookup (int *,char const*) ;
 int * dt_list_prev (int *) ;

dt_ident_t *
dt_idstack_lookup(dt_idstack_t *sp, const char *name)
{
 dt_idhash_t *dhp;
 dt_ident_t *idp;

 for (dhp = dt_list_prev(&sp->dids_list);
     dhp != ((void*)0); dhp = dt_list_prev(dhp)) {
  if ((idp = dt_idhash_lookup(dhp, name)) != ((void*)0))
   return (idp);
 }

 return (((void*)0));
}
