
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint_t ;
typedef int uint64_t ;
struct TYPE_7__ {TYPE_1__* dl_last; } ;
typedef TYPE_2__ dt_irlist_t ;
typedef int dt_ident_t ;
typedef int dif_instr_t ;
struct TYPE_8__ {int pcb_jmpbuf; int pcb_inttab; } ;
struct TYPE_6__ {int * di_extern; } ;


 int DIF_INSTR_SETX (int ,int) ;
 int DIF_INTOFF_MAX ;
 int DT_INT_PRIVATE ;
 int DT_INT_SHARED ;
 int EDT_INT2BIG ;
 int EDT_NOMEM ;
 int dt_cg_node_alloc (int ,int ) ;
 int dt_inttab_insert (int ,int ,int) ;
 int dt_irlist_append (TYPE_2__*,int ) ;
 int longjmp (int ,int ) ;
 TYPE_3__* yypcb ;

__attribute__((used)) static void
dt_cg_xsetx(dt_irlist_t *dlp, dt_ident_t *idp, uint_t lbl, int reg, uint64_t x)
{
 int flag = idp != ((void*)0) ? DT_INT_PRIVATE : DT_INT_SHARED;
 int intoff = dt_inttab_insert(yypcb->pcb_inttab, x, flag);
 dif_instr_t instr = DIF_INSTR_SETX((uint_t)intoff, reg);

 if (intoff == -1)
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);

 if (intoff > DIF_INTOFF_MAX)
  longjmp(yypcb->pcb_jmpbuf, EDT_INT2BIG);

 dt_irlist_append(dlp, dt_cg_node_alloc(lbl, instr));

 if (idp != ((void*)0))
  dlp->dl_last->di_extern = idp;
}
