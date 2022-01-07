
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
typedef scalar_t__ ssize_t ;
typedef int n ;
struct TYPE_20__ {scalar_t__ dtt_ctfp; scalar_t__ dtt_type; } ;
typedef TYPE_2__ dtrace_typeinfo_t ;
struct TYPE_21__ {scalar_t__ ds_ctfp; int ds_type; } ;
typedef TYPE_3__ dt_scope_t ;
struct TYPE_22__ {scalar_t__ dn_kind; scalar_t__ dn_value; } ;
typedef TYPE_4__ dt_node_t ;
struct TYPE_23__ {scalar_t__ dd_kind; int * dd_name; } ;
typedef TYPE_5__ dt_decl_t ;
typedef int ctf_id_t ;
struct TYPE_24__ {scalar_t__ cte_bits; scalar_t__ cte_offset; } ;
typedef TYPE_6__ ctf_encoding_t ;
struct TYPE_19__ {char* ds_ident; TYPE_5__* ds_decl; TYPE_3__* ds_next; } ;
struct TYPE_25__ {TYPE_1__ pcb_dstack; int pcb_hdl; int pcb_jmpbuf; } ;


 int CTF_ADD_NONROOT ;
 scalar_t__ CTF_ERR ;
 scalar_t__ CTF_K_FORWARD ;
 scalar_t__ CTF_K_INTEGER ;
 scalar_t__ CTF_K_STRUCT ;
 scalar_t__ CTF_K_UNION ;
 scalar_t__ CTF_K_UNKNOWN ;
 scalar_t__ DT_DYN_CTFP (int ) ;
 scalar_t__ DT_DYN_TYPE (int ) ;
 int DT_IDFLG_REF ;
 scalar_t__ DT_NODE_INT ;
 int DT_TYPE_NAMELEN ;
 int D_DECL_BFCONST ;
 int D_DECL_BFSIZE ;
 int D_DECL_BFTYPE ;
 int D_DECL_DYNOBJ ;
 int D_DECL_INCOMPLETE ;
 int D_DECL_MNAME ;
 int D_DECL_SCOPE ;
 int D_DECL_VOIDOBJ ;
 int D_UNKNOWN ;
 int EDT_COMPILER ;
 int EDT_NODECL ;
 int EDT_NOSCOPE ;
 scalar_t__ IS_VOID (TYPE_6__) ;
 scalar_t__ ctf_add_integer (scalar_t__,int ,int ,TYPE_6__*) ;
 scalar_t__ ctf_add_member (scalar_t__,int ,char*,scalar_t__) ;
 scalar_t__ ctf_add_type (scalar_t__,scalar_t__,scalar_t__) ;
 char* ctf_errmsg (int ) ;
 int ctf_errno (scalar_t__) ;
 scalar_t__ ctf_parent_file (scalar_t__) ;
 scalar_t__ ctf_type_encoding (scalar_t__,int ,TYPE_6__*) ;
 scalar_t__ ctf_type_kind (scalar_t__,int ) ;
 int ctf_type_name (scalar_t__,scalar_t__,char*,int) ;
 int ctf_type_resolve (scalar_t__,scalar_t__) ;
 scalar_t__ ctf_type_size (scalar_t__,int ) ;
 scalar_t__ ctf_update (scalar_t__) ;
 int dt_decl_check (TYPE_5__*) ;
 int dt_decl_reset () ;
 scalar_t__ dt_decl_type (TYPE_5__*,TYPE_2__*) ;
 TYPE_4__* dt_node_cook (TYPE_4__*,int ) ;
 int dt_node_free (TYPE_4__*) ;
 scalar_t__ dt_node_is_posconst (TYPE_4__*) ;
 char const* dt_type_name (scalar_t__,scalar_t__,char*,int) ;
 int free (char*) ;
 int longjmp (int ,int ) ;
 int * strchr (char*,char) ;
 int xyerror (int ,char*,...) ;
 TYPE_7__* yypcb ;

void
dt_decl_member(dt_node_t *dnp)
{
 dt_scope_t *dsp = yypcb->pcb_dstack.ds_next;
 dt_decl_t *ddp = yypcb->pcb_dstack.ds_decl;
 char *ident = yypcb->pcb_dstack.ds_ident;

 const char *idname = ident ? ident : "(anon)";
 char n[DT_TYPE_NAMELEN];

 dtrace_typeinfo_t dtt;
 ctf_encoding_t cte;
 ctf_id_t base;
 uint_t kind;
 ssize_t size;

 if (dsp == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOSCOPE);

 if (ddp == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NODECL);

 if (dnp == ((void*)0) && ident == ((void*)0))
  xyerror(D_DECL_MNAME, "member declaration requires a name\n");

 if (ddp->dd_kind == CTF_K_UNKNOWN && ddp->dd_name == ((void*)0)) {
  ddp->dd_kind = CTF_K_INTEGER;
  (void) dt_decl_check(ddp);
 }

 if (dt_decl_type(ddp, &dtt) != 0)
  longjmp(yypcb->pcb_jmpbuf, EDT_COMPILER);

 if (ident != ((void*)0) && strchr(ident, '`') != ((void*)0)) {
  xyerror(D_DECL_SCOPE, "D scoping operator may not be used "
      "in a member name (%s)\n", ident);
 }

 if (dtt.dtt_ctfp == DT_DYN_CTFP(yypcb->pcb_hdl) &&
     dtt.dtt_type == DT_DYN_TYPE(yypcb->pcb_hdl)) {
  xyerror(D_DECL_DYNOBJ,
      "cannot have dynamic member: %s\n", ident);
 }

 base = ctf_type_resolve(dtt.dtt_ctfp, dtt.dtt_type);
 kind = ctf_type_kind(dtt.dtt_ctfp, base);
 size = ctf_type_size(dtt.dtt_ctfp, base);

 if (kind == CTF_K_FORWARD || ((kind == CTF_K_STRUCT ||
     kind == CTF_K_UNION) && size == 0)) {
  xyerror(D_DECL_INCOMPLETE, "incomplete struct/union/enum %s: "
      "%s\n", dt_type_name(dtt.dtt_ctfp, dtt.dtt_type,
      n, sizeof (n)), ident);
 }

 if (size == 0)
  xyerror(D_DECL_VOIDOBJ, "cannot have void member: %s\n", ident);







 if (dnp != ((void*)0)) {
  dnp = dt_node_cook(dnp, DT_IDFLG_REF);







  if (ident == ((void*)0) && dnp->dn_kind == DT_NODE_INT &&
      dnp->dn_value == 0) {
   dt_node_free(dnp);
   goto done;
  }

  if (dt_node_is_posconst(dnp) == 0) {
   xyerror(D_DECL_BFCONST, "positive integral constant "
       "expression expected as bit-field size\n");
  }

  if (ctf_type_kind(dtt.dtt_ctfp, base) != CTF_K_INTEGER ||
      ctf_type_encoding(dtt.dtt_ctfp, base, &cte) == CTF_ERR ||
      IS_VOID(cte)) {
   xyerror(D_DECL_BFTYPE, "invalid type for "
       "bit-field: %s\n", idname);
  }

  if (dnp->dn_value > cte.cte_bits) {
   xyerror(D_DECL_BFSIZE, "bit-field too big "
       "for type: %s\n", idname);
  }

  cte.cte_offset = 0;
  cte.cte_bits = (uint_t)dnp->dn_value;

  dtt.dtt_type = ctf_add_integer(dsp->ds_ctfp,
      CTF_ADD_NONROOT, ctf_type_name(dtt.dtt_ctfp,
      dtt.dtt_type, n, sizeof (n)), &cte);

  if (dtt.dtt_type == CTF_ERR ||
      ctf_update(dsp->ds_ctfp) == CTF_ERR) {
   xyerror(D_UNKNOWN, "failed to create type for "
       "member '%s': %s\n", idname,
       ctf_errmsg(ctf_errno(dsp->ds_ctfp)));
  }

  dtt.dtt_ctfp = dsp->ds_ctfp;
  dt_node_free(dnp);
 }







 if (dtt.dtt_ctfp != dsp->ds_ctfp &&
     dtt.dtt_ctfp != ctf_parent_file(dsp->ds_ctfp)) {

  dtt.dtt_type = ctf_add_type(dsp->ds_ctfp,
      dtt.dtt_ctfp, dtt.dtt_type);
  dtt.dtt_ctfp = dsp->ds_ctfp;

  if (dtt.dtt_type == CTF_ERR ||
      ctf_update(dtt.dtt_ctfp) == CTF_ERR) {
   xyerror(D_UNKNOWN, "failed to copy type of '%s': %s\n",
       idname, ctf_errmsg(ctf_errno(dtt.dtt_ctfp)));
  }
 }

 if (ctf_add_member(dsp->ds_ctfp, dsp->ds_type,
     ident, dtt.dtt_type) == CTF_ERR) {
  xyerror(D_UNKNOWN, "failed to define member '%s': %s\n",
      idname, ctf_errmsg(ctf_errno(dsp->ds_ctfp)));
 }

done:
 free(ident);
 yypcb->pcb_dstack.ds_ident = ((void*)0);
 dt_decl_reset();
}
