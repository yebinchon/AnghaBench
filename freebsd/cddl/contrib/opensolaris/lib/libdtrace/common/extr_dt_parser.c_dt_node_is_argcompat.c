
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int dn_flags; int dn_type; int * dn_ctfp; } ;
typedef TYPE_1__ dt_node_t ;
typedef int ctf_file_t ;





 int DT_NF_COOKED ;
 int assert (int) ;
 int ctf_type_compat (int *,int ,int *,int ) ;
 int ctf_type_kind (int *,int ) ;
 int ctf_type_resolve (int *,int ) ;
 scalar_t__ dt_node_is_integer (TYPE_1__ const*) ;
 int dt_node_is_ptrcompat (TYPE_1__ const*,TYPE_1__ const*,int *,int *) ;
 scalar_t__ dt_node_is_stack (TYPE_1__ const*) ;
 scalar_t__ dt_node_is_strcompat (TYPE_1__ const*) ;
 scalar_t__ dt_node_is_symaddr (TYPE_1__ const*) ;
 scalar_t__ dt_node_is_usymaddr (TYPE_1__ const*) ;

int
dt_node_is_argcompat(const dt_node_t *lp, const dt_node_t *rp)
{
 ctf_file_t *lfp = lp->dn_ctfp;
 ctf_file_t *rfp = rp->dn_ctfp;

 assert(lp->dn_flags & DT_NF_COOKED);
 assert(rp->dn_flags & DT_NF_COOKED);

 if (dt_node_is_integer(lp) && dt_node_is_integer(rp))
  return (1);

 if (dt_node_is_strcompat(lp) && dt_node_is_strcompat(rp))
  return (1);

 if (dt_node_is_stack(lp) && dt_node_is_stack(rp))
  return (1);

 if (dt_node_is_symaddr(lp) && dt_node_is_symaddr(rp))
  return (1);

 if (dt_node_is_usymaddr(lp) && dt_node_is_usymaddr(rp))
  return (1);

 switch (ctf_type_kind(lfp, ctf_type_resolve(lfp, lp->dn_type))) {
 case 130:
 case 129:
 case 128:
  return (ctf_type_compat(lfp, lp->dn_type, rfp, rp->dn_type));
 default:
  return (dt_node_is_ptrcompat(lp, rp, ((void*)0), ((void*)0)));
 }
}
