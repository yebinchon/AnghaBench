
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int dt_idhash_t ;
struct TYPE_6__ {int di_kind; int di_vers; int di_attr; int di_name; } ;
typedef TYPE_1__ dt_ident_t ;
struct TYPE_7__ {int * pcb_pragmas; } ;




 int dt_idhash_delete (int *,TYPE_1__*) ;
 TYPE_1__* dt_idhash_lookup (int *,int ) ;
 TYPE_2__* yypcb ;

__attribute__((used)) static void
dt_pragma_apply(dt_idhash_t *dhp, dt_ident_t *idp)
{
 dt_idhash_t *php;
 dt_ident_t *pdp;

 if ((php = yypcb->pcb_pragmas) == ((void*)0))
  return;

 while ((pdp = dt_idhash_lookup(php, idp->di_name)) != ((void*)0)) {
  switch (pdp->di_kind) {
  case 129:
   idp->di_attr = pdp->di_attr;
   break;
  case 128:
   idp->di_vers = pdp->di_vers;
   break;
  }
  dt_idhash_delete(php, pdp);
 }
}
