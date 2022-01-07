
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ di_label; scalar_t__ di_instr; struct TYPE_5__* di_next; } ;
typedef TYPE_1__ dt_irnode_t ;
struct TYPE_6__ {int dl_len; TYPE_1__* dl_last; TYPE_1__* dl_list; } ;
typedef TYPE_2__ dt_irlist_t ;


 scalar_t__ DIF_INSTR_NOP ;
 scalar_t__ DT_LBL_NONE ;

void
dt_irlist_append(dt_irlist_t *dlp, dt_irnode_t *dip)
{
 if (dlp->dl_last != ((void*)0))
  dlp->dl_last->di_next = dip;
 else
  dlp->dl_list = dip;

 dlp->dl_last = dip;

 if (dip->di_label == DT_LBL_NONE || dip->di_instr != DIF_INSTR_NOP)
  dlp->dl_len++;
}
