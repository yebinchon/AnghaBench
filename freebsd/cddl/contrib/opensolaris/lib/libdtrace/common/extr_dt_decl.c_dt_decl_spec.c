
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ ushort_t ;
struct TYPE_10__ {char* dd_name; scalar_t__ dd_kind; } ;
typedef TYPE_2__ dt_decl_t ;
struct TYPE_9__ {scalar_t__ ds_class; TYPE_2__* ds_decl; } ;
struct TYPE_11__ {TYPE_1__ pcb_dstack; } ;


 scalar_t__ CTF_K_TYPEDEF ;
 scalar_t__ CTF_K_UNKNOWN ;
 scalar_t__ DT_DC_TYPEDEF ;
 int D_DECL_COMBO ;
 int D_DECL_IDRED ;
 int dt_decl_alloc (scalar_t__,char*) ;
 TYPE_2__* dt_decl_check (TYPE_2__*) ;
 TYPE_2__* dt_decl_ident (char*) ;
 TYPE_2__* dt_decl_push (int ) ;
 int xyerror (int ,char*,...) ;
 TYPE_3__* yypcb ;

dt_decl_t *
dt_decl_spec(ushort_t kind, char *name)
{
 dt_decl_t *ddp = yypcb->pcb_dstack.ds_decl;

 if (ddp == ((void*)0))
  return (dt_decl_push(dt_decl_alloc(kind, name)));
 if (ddp->dd_name != ((void*)0) && kind == CTF_K_TYPEDEF) {
  if (yypcb->pcb_dstack.ds_class != DT_DC_TYPEDEF)
   return (dt_decl_ident(name));
  xyerror(D_DECL_IDRED, "identifier redeclared: %s\n", name);
 }

 if (ddp->dd_name != ((void*)0) || ddp->dd_kind != CTF_K_UNKNOWN)
  xyerror(D_DECL_COMBO, "invalid type combination\n");

 ddp->dd_kind = kind;
 ddp->dd_name = name;

 return (dt_decl_check(ddp));
}
