
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ dt_gen; TYPE_2__* dt_globals; } ;
typedef TYPE_3__ dtrace_hdl_t ;
typedef int dt_version_t ;
struct TYPE_13__ {scalar_t__ dn_kind; TYPE_1__* dn_list; int dn_string; } ;
typedef TYPE_4__ dt_node_t ;
struct TYPE_14__ {scalar_t__ di_gen; int di_vers; } ;
typedef TYPE_5__ dt_ident_t ;
struct TYPE_15__ {int pcb_jmpbuf; int * pcb_pragmas; int pcb_globals; TYPE_3__* pcb_hdl; } ;
struct TYPE_11__ {int * dh_defer; } ;
struct TYPE_10__ {scalar_t__ dn_kind; char* dn_string; } ;


 int DT_IDENT_PRAGBN ;
 scalar_t__ DT_NODE_IDENT ;
 scalar_t__ DT_NODE_STRING ;
 int D_PRAGMA_INVAL ;
 int D_PRAGMA_MALFORM ;
 int D_PRAGMA_SCOPE ;
 int EDT_NOMEM ;
 int _dtrace_defattr ;
 int * dt_idhash_create (char*,int *,int ,int ) ;
 TYPE_5__* dt_idhash_insert (int *,char const*,int ,int ,int ,int ,int ,int *,void*,scalar_t__) ;
 int dt_idops_thaw ;
 TYPE_5__* dt_idstack_lookup (int *,char const*) ;
 int dt_pragma_apply ;
 int dt_version_str2num (int ,int *) ;
 int longjmp (int ,int ) ;
 int xyerror (int ,char*,char const*) ;
 TYPE_6__* yypcb ;

__attribute__((used)) static void
dt_pragma_binding(const char *prname, dt_node_t *dnp)
{
 dtrace_hdl_t *dtp = yypcb->pcb_hdl;
 dt_version_t vers;
 const char *name;
 dt_ident_t *idp;

 if (dnp == ((void*)0) || dnp->dn_kind != DT_NODE_STRING ||
     dnp->dn_list == ((void*)0) || dnp->dn_list->dn_kind != DT_NODE_IDENT) {
  xyerror(D_PRAGMA_MALFORM, "malformed #pragma %s "
      "\"version\" <ident>\n", prname);
 }

 if (dt_version_str2num(dnp->dn_string, &vers) == -1) {
  xyerror(D_PRAGMA_INVAL, "invalid version string "
      "specified by #pragma %s\n", prname);
 }

 name = dnp->dn_list->dn_string;
 idp = dt_idstack_lookup(&yypcb->pcb_globals, name);

 if (idp != ((void*)0)) {
  if (idp->di_gen != dtp->dt_gen) {
   xyerror(D_PRAGMA_SCOPE, "#pragma %s cannot modify "
       "entity defined outside program scope\n", prname);
  }
  idp->di_vers = vers;
  return;
 }

 if (yypcb->pcb_pragmas == ((void*)0) && (yypcb->pcb_pragmas =
     dt_idhash_create("pragma", ((void*)0), 0, 0)) == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);

 idp = dt_idhash_insert(yypcb->pcb_pragmas, name, DT_IDENT_PRAGBN, 0, 0,
     _dtrace_defattr, vers, &dt_idops_thaw, (void *)prname, dtp->dt_gen);

 if (idp == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);

 if (dtp->dt_globals->dh_defer == ((void*)0))
  dtp->dt_globals->dh_defer = &dt_pragma_apply;
}
