
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dtc_ctfmodel; } ;
struct TYPE_8__ {TYPE_1__ dt_conf; } ;
typedef TYPE_2__ dtrace_hdl_t ;
struct TYPE_9__ {scalar_t__ dn_kind; int dn_flags; int dn_type; int dn_ctfp; int * dn_ident; int dn_string; } ;
typedef TYPE_3__ dt_node_t ;
typedef int ctf_id_t ;
struct TYPE_10__ {TYPE_2__* pcb_hdl; } ;


 scalar_t__ CTF_K_FORWARD ;
 scalar_t__ CTF_K_POINTER ;
 scalar_t__ CTF_MODEL_ILP32 ;
 scalar_t__ CTF_MODEL_LP64 ;
 int DT_NF_USERLAND ;
 scalar_t__ DT_NODE_STRING ;
 scalar_t__ ctf_getmodel (int ) ;
 scalar_t__ ctf_type_kind (int ,int ) ;
 int ctf_type_resolve (int ,int ) ;
 size_t ctf_type_size (int ,int ) ;
 size_t dt_ident_size (int *) ;
 scalar_t__ dt_node_is_dynamic (TYPE_3__ const*) ;
 size_t strlen (int ) ;
 TYPE_4__* yypcb ;

size_t
dt_node_type_size(const dt_node_t *dnp)
{
 ctf_id_t base;
 dtrace_hdl_t *dtp = yypcb->pcb_hdl;

 if (dnp->dn_kind == DT_NODE_STRING)
  return (strlen(dnp->dn_string) + 1);

 if (dt_node_is_dynamic(dnp) && dnp->dn_ident != ((void*)0))
  return (dt_ident_size(dnp->dn_ident));

 base = ctf_type_resolve(dnp->dn_ctfp, dnp->dn_type);

 if (ctf_type_kind(dnp->dn_ctfp, base) == CTF_K_FORWARD)
  return (0);
 if (ctf_type_kind(dnp->dn_ctfp, base) == CTF_K_POINTER &&
     ctf_getmodel(dnp->dn_ctfp) == CTF_MODEL_ILP32 &&
     !(dnp->dn_flags & DT_NF_USERLAND) &&
     dtp->dt_conf.dtc_ctfmodel == CTF_MODEL_LP64)
   return (8);

 return (ctf_type_size(dnp->dn_ctfp, dnp->dn_type));
}
