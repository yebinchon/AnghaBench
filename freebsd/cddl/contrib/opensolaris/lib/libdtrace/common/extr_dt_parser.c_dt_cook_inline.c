
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint_t ;
typedef int n2 ;
typedef int n1 ;
struct TYPE_15__ {int dx_dst_base; int * dx_dst_ctfp; } ;
typedef TYPE_2__ dt_xlator_t ;
struct TYPE_16__ {int dn_flags; TYPE_1__* dn_ident; int dn_type; int * dn_ctfp; } ;
typedef TYPE_3__ dt_node_t ;
struct TYPE_17__ {TYPE_3__* din_root; } ;
typedef TYPE_4__ dt_idnode_t ;
struct TYPE_18__ {TYPE_2__* di_data; } ;
typedef TYPE_5__ dt_ident_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;
struct TYPE_14__ {int di_flags; int di_name; TYPE_4__* di_iarg; } ;


 scalar_t__ CTF_K_POINTER ;
 int DT_IDENT_XLPTR ;
 int DT_IDENT_XLSOU ;
 int DT_IDFLG_INLINE ;
 int DT_NF_COOKED ;
 int DT_TYPE_NAMELEN ;
 int D_OP_INCOMPAT ;
 int assert (int) ;
 scalar_t__ ctf_type_compat (int *,int ,int *,int ) ;
 scalar_t__ ctf_type_kind (int *,int ) ;
 int ctf_type_reference (int *,int ) ;
 int ctf_type_resolve (int *,int ) ;
 int dnerror (TYPE_3__*,int ,char*,int ,int ,int ) ;
 scalar_t__ dt_node_is_argcompat (TYPE_3__*,TYPE_3__*) ;
 TYPE_5__* dt_node_resolve (TYPE_3__*,int ) ;
 int dt_node_type_name (TYPE_3__*,char*,int) ;
 int dt_type_name (int *,int ,char*,int) ;

__attribute__((used)) static dt_node_t *
dt_cook_inline(dt_node_t *dnp, uint_t idflags)
{
 dt_idnode_t *inp = dnp->dn_ident->di_iarg;
 dt_ident_t *rdp;

 char n1[DT_TYPE_NAMELEN];
 char n2[DT_TYPE_NAMELEN];

 assert(dnp->dn_ident->di_flags & DT_IDFLG_INLINE);
 assert(inp->din_root->dn_flags & DT_NF_COOKED);






 if ((rdp = dt_node_resolve(inp->din_root, DT_IDENT_XLSOU)) != ((void*)0) ||
     (rdp = dt_node_resolve(inp->din_root, DT_IDENT_XLPTR)) != ((void*)0)) {

  ctf_file_t *lctfp = dnp->dn_ctfp;
  ctf_id_t ltype = ctf_type_resolve(lctfp, dnp->dn_type);

  dt_xlator_t *dxp = rdp->di_data;
  ctf_file_t *rctfp = dxp->dx_dst_ctfp;
  ctf_id_t rtype = dxp->dx_dst_base;

  if (ctf_type_kind(lctfp, ltype) == CTF_K_POINTER) {
   ltype = ctf_type_reference(lctfp, ltype);
   ltype = ctf_type_resolve(lctfp, ltype);
  }

  if (ctf_type_compat(lctfp, ltype, rctfp, rtype) == 0) {
   dnerror(dnp, D_OP_INCOMPAT,
       "inline %s definition uses incompatible types: "
       "\"%s\" = \"%s\"\n", dnp->dn_ident->di_name,
       dt_type_name(lctfp, ltype, n1, sizeof (n1)),
       dt_type_name(rctfp, rtype, n2, sizeof (n2)));
  }

 } else if (dt_node_is_argcompat(dnp, inp->din_root) == 0) {
  dnerror(dnp, D_OP_INCOMPAT,
      "inline %s definition uses incompatible types: "
      "\"%s\" = \"%s\"\n", dnp->dn_ident->di_name,
      dt_node_type_name(dnp, n1, sizeof (n1)),
      dt_node_type_name(inp->din_root, n2, sizeof (n2)));
 }

 return (dnp);
}
