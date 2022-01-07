
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int dtt_flags; int dtt_type; int dtt_ctfp; } ;
typedef TYPE_1__ dtrace_typeinfo_t ;
struct TYPE_10__ {char* dn_membname; struct TYPE_10__* dn_membexpr; } ;
typedef TYPE_2__ dt_node_t ;
typedef int dt_decl_t ;
struct TYPE_11__ {int pcb_jmpbuf; } ;


 int DT_NODE_MEMBER ;
 int EDT_COMPILER ;
 int dt_decl_free (int *) ;
 int dt_decl_type (int *,TYPE_1__*) ;
 TYPE_2__* dt_node_alloc (int ) ;
 int dt_node_type_assign (TYPE_2__*,int ,int ,int ) ;
 int longjmp (int ,int ) ;
 TYPE_3__* yypcb ;

dt_node_t *
dt_node_member(dt_decl_t *ddp, char *name, dt_node_t *expr)
{
 dtrace_typeinfo_t dtt;
 dt_node_t *dnp;
 int err;

 if (ddp != ((void*)0)) {
  err = dt_decl_type(ddp, &dtt);
  dt_decl_free(ddp);

  if (err != 0)
   longjmp(yypcb->pcb_jmpbuf, EDT_COMPILER);
 }

 dnp = dt_node_alloc(DT_NODE_MEMBER);
 dnp->dn_membname = name;
 dnp->dn_membexpr = expr;

 if (ddp != ((void*)0))
  dt_node_type_assign(dnp, dtt.dtt_ctfp, dtt.dtt_type,
      dtt.dtt_flags);

 return (dnp);
}
