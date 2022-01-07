
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__ intmax_t ;
struct TYPE_22__ {int dt_gen; int dt_globals; TYPE_3__* dt_ddefs; } ;
typedef TYPE_4__ dtrace_hdl_t ;
struct TYPE_23__ {int ds_enumval; scalar_t__ ds_ctfp; int ds_type; TYPE_2__* ds_decl; } ;
typedef TYPE_5__ dt_scope_t ;
struct TYPE_24__ {scalar_t__ dn_kind; struct TYPE_24__* dn_link; scalar_t__ dn_value; int dn_string; } ;
typedef TYPE_6__ dt_node_t ;
struct TYPE_25__ {TYPE_6__* din_root; TYPE_6__* din_list; } ;
typedef TYPE_7__ dt_idnode_t ;
struct TYPE_26__ {scalar_t__ di_ctfp; int di_type; TYPE_7__* di_iarg; } ;
typedef TYPE_8__ dt_ident_t ;
struct TYPE_19__ {TYPE_5__* ds_next; } ;
struct TYPE_27__ {TYPE_6__* pcb_list; int pcb_jmpbuf; int pcb_globals; TYPE_4__* pcb_hdl; TYPE_1__ pcb_dstack; } ;
struct TYPE_21__ {scalar_t__ dm_ctfp; } ;
struct TYPE_20__ {scalar_t__ dd_kind; } ;


 int B_FALSE ;
 scalar_t__ CTF_ERR ;
 scalar_t__ CTF_K_ENUM ;
 int DT_IDENT_ENUM ;
 int DT_IDFLG_INLINE ;
 int DT_IDFLG_REF ;
 scalar_t__ DT_NODE_IDENT ;
 scalar_t__ DT_NODE_INT ;
 int D_DECL_ENCONST ;
 int D_DECL_ENOFLOW ;
 int D_DECL_IDRED ;
 int D_DECL_SCOPE ;
 int D_UNKNOWN ;
 int EDT_NOMEM ;
 int EDT_NOSCOPE ;
 scalar_t__ INT_MAX ;
 scalar_t__ INT_MIN ;
 int _dtrace_defattr ;
 char* alloca (scalar_t__) ;
 int assert (int) ;
 int bzero (TYPE_7__*,int) ;
 scalar_t__ ctf_add_enumerator (scalar_t__,int ,char*,int) ;
 scalar_t__ ctf_enum_value (scalar_t__,int ,int ,int*) ;
 int ctf_errmsg (int ) ;
 int ctf_errno (scalar_t__) ;
 scalar_t__ ctf_update (scalar_t__) ;
 int dt_dprintf (char*,char*,int) ;
 TYPE_8__* dt_idhash_insert (int ,char*,int ,int,int ,int ,int ,int *,int *,int ) ;
 int dt_idops_inline ;
 int * dt_idstack_lookup (int *,char*) ;
 TYPE_6__* dt_node_cook (TYPE_6__*,int) ;
 int dt_node_free (TYPE_6__*) ;
 TYPE_6__* dt_node_int (int) ;
 int dt_node_type_assign (TYPE_6__*,scalar_t__,int ,int ) ;
 int free (char*) ;
 int longjmp (int ,int ) ;
 TYPE_7__* malloc (int) ;
 int * strchr (char*,char) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int xyerror (int ,char*,char*,...) ;
 scalar_t__ yyintdecimal ;
 scalar_t__ yyintprefix ;
 char* yyintsuffix ;
 TYPE_9__* yypcb ;

void
dt_decl_enumerator(char *s, dt_node_t *dnp)
{
 dt_scope_t *dsp = yypcb->pcb_dstack.ds_next;
 dtrace_hdl_t *dtp = yypcb->pcb_hdl;

 dt_idnode_t *inp;
 dt_ident_t *idp;
 char *name;
 int value;

 name = alloca(strlen(s) + 1);
 (void) strcpy(name, s);
 free(s);

 if (dsp == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOSCOPE);

 assert(dsp->ds_decl->dd_kind == CTF_K_ENUM);
 value = dsp->ds_enumval + 1;

 if (strchr(name, '`') != ((void*)0)) {
  xyerror(D_DECL_SCOPE, "D scoping operator may not be used in "
      "an enumerator name (%s)\n", name);
 }






 if (dnp != ((void*)0)) {
  if (dnp->dn_kind != DT_NODE_IDENT || ctf_enum_value(
      dsp->ds_ctfp, dsp->ds_type, dnp->dn_string, &value) != 0) {
   dnp = dt_node_cook(dnp, DT_IDFLG_REF);

   if (dnp->dn_kind != DT_NODE_INT) {
    xyerror(D_DECL_ENCONST, "enumerator '%s' must "
        "be assigned to an integral constant "
        "expression\n", name);
   }

   if ((intmax_t)dnp->dn_value > INT_MAX ||
       (intmax_t)dnp->dn_value < INT_MIN) {
    xyerror(D_DECL_ENOFLOW, "enumerator '%s' value "
        "overflows INT_MAX (%d)\n", name, INT_MAX);
   }

   value = (int)dnp->dn_value;
  }
  dt_node_free(dnp);
 }

 if (ctf_add_enumerator(dsp->ds_ctfp, dsp->ds_type,
     name, value) == CTF_ERR || ctf_update(dsp->ds_ctfp) == CTF_ERR) {
  xyerror(D_UNKNOWN, "failed to define enumerator '%s': %s\n",
      name, ctf_errmsg(ctf_errno(dsp->ds_ctfp)));
 }

 dsp->ds_enumval = value;
 if (dt_idstack_lookup(&yypcb->pcb_globals, name) != ((void*)0)) {
  if (dsp->ds_ctfp == dtp->dt_ddefs->dm_ctfp) {
   xyerror(D_DECL_IDRED,
       "identifier redeclared: %s\n", name);
  } else
   return;
 }

 dt_dprintf("add global enumerator %s = %d\n", name, value);

 idp = dt_idhash_insert(dtp->dt_globals, name, DT_IDENT_ENUM,
     DT_IDFLG_INLINE | DT_IDFLG_REF, 0, _dtrace_defattr, 0,
     &dt_idops_inline, ((void*)0), dtp->dt_gen);

 if (idp == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);

 yyintprefix = 0;
 yyintsuffix[0] = '\0';
 yyintdecimal = 0;

 dnp = dt_node_int(value);
 dt_node_type_assign(dnp, dsp->ds_ctfp, dsp->ds_type, B_FALSE);

 if ((inp = malloc(sizeof (dt_idnode_t))) == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);





 assert(yypcb->pcb_list == dnp);
 yypcb->pcb_list = dnp->dn_link;
 dnp->dn_link = ((void*)0);

 bzero(inp, sizeof (dt_idnode_t));
 inp->din_list = dnp;
 inp->din_root = dnp;

 idp->di_iarg = inp;
 idp->di_ctfp = dsp->ds_ctfp;
 idp->di_type = dsp->ds_type;
}
