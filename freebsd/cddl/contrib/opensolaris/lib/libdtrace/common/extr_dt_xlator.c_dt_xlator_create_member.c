
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ulong_t ;
typedef int dtrace_hdl_t ;
struct TYPE_5__ {int dx_dst_ctfp; TYPE_2__* dx_members; TYPE_2__* dx_nodes; int * dx_hdl; } ;
typedef TYPE_1__ dt_xlator_t ;
struct TYPE_6__ {scalar_t__ dn_kind; int * dn_membname; struct TYPE_6__* dn_membexpr; struct TYPE_6__* dn_list; struct TYPE_6__* dn_link; struct TYPE_6__* dn_xmember; TYPE_1__* dn_xlator; int dn_op; } ;
typedef TYPE_2__ dt_node_t ;
typedef int ctf_id_t ;


 int B_FALSE ;
 scalar_t__ DT_NODE_MEMBER ;
 scalar_t__ DT_NODE_XLATOR ;
 int DT_TOK_XLATE ;
 int EDT_NOMEM ;
 int assert (int) ;
 int dt_node_type_assign (TYPE_2__*,int ,int ,int ) ;
 TYPE_2__* dt_node_xalloc (int *,scalar_t__) ;
 int dt_set_errno (int *,int ) ;
 int * strdup (char const*) ;

__attribute__((used)) static int
dt_xlator_create_member(const char *name, ctf_id_t type, ulong_t off, void *arg)
{
 dt_xlator_t *dxp = arg;
 dtrace_hdl_t *dtp = dxp->dx_hdl;
 dt_node_t *enp, *mnp;

 if ((enp = dt_node_xalloc(dtp, DT_NODE_XLATOR)) == ((void*)0))
  return (dt_set_errno(dtp, EDT_NOMEM));

 enp->dn_link = dxp->dx_nodes;
 dxp->dx_nodes = enp;

 if ((mnp = dt_node_xalloc(dtp, DT_NODE_MEMBER)) == ((void*)0))
  return (dt_set_errno(dtp, EDT_NOMEM));

 mnp->dn_link = dxp->dx_nodes;
 dxp->dx_nodes = mnp;






 enp->dn_op = DT_TOK_XLATE;
 enp->dn_xlator = dxp;
 enp->dn_xmember = mnp;
 dt_node_type_assign(enp, dxp->dx_dst_ctfp, type, B_FALSE);





 if (dxp->dx_members != ((void*)0)) {
  assert(enp->dn_link->dn_kind == DT_NODE_MEMBER);
  enp->dn_link->dn_list = mnp;
 } else
  dxp->dx_members = mnp;

 mnp->dn_membname = strdup(name);
 mnp->dn_membexpr = enp;
 dt_node_type_assign(mnp, dxp->dx_dst_ctfp, type, B_FALSE);

 if (mnp->dn_membname == ((void*)0))
  return (dt_set_errno(dtp, EDT_NOMEM));

 return (0);
}
