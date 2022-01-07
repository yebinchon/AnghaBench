
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dh_name; TYPE_2__* dh_tmpl; } ;
typedef TYPE_1__ dt_idhash_t ;
struct TYPE_7__ {int di_iarg; int * di_ops; int di_vers; int di_attr; int di_id; int di_flags; int di_kind; int * di_name; } ;
typedef TYPE_2__ dt_ident_t ;
struct TYPE_8__ {int pcb_jmpbuf; } ;


 int EDT_NOMEM ;
 int dt_dprintf (char*,int ,void*) ;
 int * dt_idhash_insert (TYPE_1__*,int *,int ,int ,int ,int ,int ,int *,int ,int ) ;
 int dt_idops_thaw ;
 int longjmp (int ,int ) ;
 TYPE_3__* yypcb ;

__attribute__((used)) static void
dt_idhash_populate(dt_idhash_t *dhp)
{
 const dt_ident_t *idp = dhp->dh_tmpl;

 dhp->dh_tmpl = ((void*)0);
 dt_dprintf("populating %s idhash from %p\n", dhp->dh_name, (void *)idp);

 for (; idp->di_name != ((void*)0); idp++) {
  if (dt_idhash_insert(dhp, idp->di_name,
      idp->di_kind, idp->di_flags, idp->di_id, idp->di_attr,
      idp->di_vers, idp->di_ops ? idp->di_ops : &dt_idops_thaw,
      idp->di_iarg, 0) == ((void*)0))
   longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);
 }
}
