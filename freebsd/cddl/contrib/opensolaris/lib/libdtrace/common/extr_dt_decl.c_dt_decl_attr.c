
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ushort_t ;
struct TYPE_9__ {int dd_attr; } ;
typedef TYPE_2__ dt_decl_t ;
struct TYPE_8__ {TYPE_2__* ds_decl; } ;
struct TYPE_10__ {TYPE_1__ pcb_dstack; } ;


 int CTF_K_UNKNOWN ;
 int DT_DA_LONG ;
 int DT_DA_LONGLONG ;
 int dt_decl_alloc (int ,int *) ;
 TYPE_2__* dt_decl_check (TYPE_2__*) ;
 TYPE_2__* dt_decl_push (int ) ;
 TYPE_3__* yypcb ;

dt_decl_t *
dt_decl_attr(ushort_t attr)
{
 dt_decl_t *ddp = yypcb->pcb_dstack.ds_decl;

 if (ddp == ((void*)0)) {
  ddp = dt_decl_push(dt_decl_alloc(CTF_K_UNKNOWN, ((void*)0)));
  ddp->dd_attr = attr;
  return (ddp);
 }

 if (attr == DT_DA_LONG && (ddp->dd_attr & DT_DA_LONG)) {
  ddp->dd_attr &= ~DT_DA_LONG;
  attr = DT_DA_LONGLONG;
 }

 ddp->dd_attr |= attr;
 return (dt_decl_check(ddp));
}
