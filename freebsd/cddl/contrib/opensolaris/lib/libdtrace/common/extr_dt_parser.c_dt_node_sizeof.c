
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int dts_name; int dts_object; } ;
typedef TYPE_2__ dtrace_syminfo_t ;
typedef int dtrace_hdl_t ;
struct TYPE_11__ {scalar_t__ dn_kind; TYPE_1__* dn_ident; } ;
typedef TYPE_3__ dt_node_t ;
struct TYPE_13__ {int * pcb_hdl; } ;
struct TYPE_12__ {size_t st_size; } ;
struct TYPE_9__ {TYPE_2__* di_data; } ;
typedef TYPE_4__ GElf_Sym ;


 scalar_t__ DT_NODE_SYM ;
 size_t dt_node_type_size (TYPE_3__ const*) ;
 int dtrace_lookup_by_name (int *,int ,int ,TYPE_4__*,int *) ;
 TYPE_5__* yypcb ;

size_t
dt_node_sizeof(const dt_node_t *dnp)
{
 dtrace_syminfo_t *sip;
 GElf_Sym sym;
 dtrace_hdl_t *dtp = yypcb->pcb_hdl;
 if (dnp->dn_kind != DT_NODE_SYM)
  return (dt_node_type_size(dnp));

 sip = dnp->dn_ident->di_data;

 if (dtrace_lookup_by_name(dtp, sip->dts_object,
     sip->dts_name, &sym, ((void*)0)) == -1)
  return (0);

 return (sym.st_size);
}
