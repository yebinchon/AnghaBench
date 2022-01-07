
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
typedef int sn ;
typedef int n2 ;
typedef int n1 ;
struct TYPE_18__ {int dtt_type; int dtt_ctfp; } ;
typedef TYPE_1__ dtrace_typeinfo_t ;
typedef int dtrace_hdl_t ;
typedef int dt_xlator_t ;
struct TYPE_19__ {struct TYPE_19__* dn_members; int * dn_xlator; } ;
typedef TYPE_2__ dt_node_t ;
typedef int dt_decl_t ;
typedef int dn ;
struct TYPE_20__ {int pcb_jmpbuf; int pcb_list; int * pcb_hdl; } ;


 int B_FALSE ;
 scalar_t__ CTF_K_FORWARD ;
 scalar_t__ CTF_K_STRUCT ;
 scalar_t__ CTF_K_UNION ;
 int DT_IDFLG_REF ;
 int DT_NODE_XLATOR ;
 int DT_TYPE_NAMELEN ;
 int DT_XLATE_EXACT ;
 int D_XLATE_REDECL ;
 int D_XLATE_SOU ;
 int EDT_COMPILER ;
 int EDT_NOMEM ;
 int YYS_CLAUSE ;
 int bzero (TYPE_2__*,int) ;
 scalar_t__ ctf_type_kind (int ,int ) ;
 int ctf_type_resolve (int ,int ) ;
 int dt_decl_free (int *) ;
 int dt_decl_type (int *,TYPE_1__*) ;
 TYPE_2__* dt_node_alloc (int ) ;
 TYPE_2__* dt_node_cook (TYPE_2__*,int ) ;
 int dt_node_type_assign (TYPE_2__*,int ,int ,int ) ;
 int dt_node_type_name (TYPE_2__*,char*,int) ;
 int dt_type_name (int ,int ,char*,int) ;
 int * dt_xlator_create (int *,TYPE_1__*,TYPE_1__*,char*,TYPE_2__*,int ) ;
 int * dt_xlator_lookup (int *,TYPE_2__*,TYPE_2__*,int ) ;
 int free (char*) ;
 int longjmp (int ,int ) ;
 int xyerror (int ,char*,...) ;
 int yybegin (int ) ;
 TYPE_3__* yypcb ;

dt_node_t *
dt_node_xlator(dt_decl_t *ddp, dt_decl_t *sdp, char *name, dt_node_t *members)
{
 dtrace_hdl_t *dtp = yypcb->pcb_hdl;
 dtrace_typeinfo_t src, dst;
 dt_node_t sn, dn;
 dt_xlator_t *dxp;
 dt_node_t *dnp;
 int edst, esrc;
 uint_t kind;

 char n1[DT_TYPE_NAMELEN];
 char n2[DT_TYPE_NAMELEN];

 edst = dt_decl_type(ddp, &dst);
 dt_decl_free(ddp);

 esrc = dt_decl_type(sdp, &src);
 dt_decl_free(sdp);

 if (edst != 0 || esrc != 0) {
  free(name);
  longjmp(yypcb->pcb_jmpbuf, EDT_COMPILER);
 }

 bzero(&sn, sizeof (sn));
 dt_node_type_assign(&sn, src.dtt_ctfp, src.dtt_type, B_FALSE);

 bzero(&dn, sizeof (dn));
 dt_node_type_assign(&dn, dst.dtt_ctfp, dst.dtt_type, B_FALSE);

 if (dt_xlator_lookup(dtp, &sn, &dn, DT_XLATE_EXACT) != ((void*)0)) {
  xyerror(D_XLATE_REDECL,
      "translator from %s to %s has already been declared\n",
      dt_node_type_name(&sn, n1, sizeof (n1)),
      dt_node_type_name(&dn, n2, sizeof (n2)));
 }

 kind = ctf_type_kind(dst.dtt_ctfp,
     ctf_type_resolve(dst.dtt_ctfp, dst.dtt_type));

 if (kind == CTF_K_FORWARD) {
  xyerror(D_XLATE_SOU, "incomplete struct/union/enum %s\n",
      dt_type_name(dst.dtt_ctfp, dst.dtt_type, n1, sizeof (n1)));
 }

 if (kind != CTF_K_STRUCT && kind != CTF_K_UNION) {
  xyerror(D_XLATE_SOU,
      "translator output type must be a struct or union\n");
 }

 dxp = dt_xlator_create(dtp, &src, &dst, name, members, yypcb->pcb_list);
 yybegin(YYS_CLAUSE);
 free(name);

 if (dxp == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);

 dnp = dt_node_alloc(DT_NODE_XLATOR);
 dnp->dn_xlator = dxp;
 dnp->dn_members = members;

 return (dt_node_cook(dnp, DT_IDFLG_REF));
}
