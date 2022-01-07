
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
typedef TYPE_1__* purbb_t ;
typedef int VOID ;
struct TYPE_11__ {unsigned long data; } ;
struct TYPE_10__ {TYPE_5__ pspoll_frame_complete_task; } ;
struct TYPE_9__ {scalar_t__ OS_Cookie; } ;
struct TYPE_8__ {TYPE_3__* pAd; } ;
struct TYPE_7__ {int status; scalar_t__ context; } ;
typedef TYPE_2__* PTX_CONTEXT ;
typedef TYPE_3__* PRTMP_ADAPTER ;
typedef TYPE_4__* POS_COOKIE ;
typedef int NTSTATUS ;


 int tasklet_hi_schedule (TYPE_5__*) ;

VOID RTUSBBulkOutPsPollComplete(purbb_t pUrb,struct pt_regs *pt_regs)
{
 PRTMP_ADAPTER pAd;
 PTX_CONTEXT pPsPollContext;
 NTSTATUS Status;
 POS_COOKIE pObj;


 pPsPollContext= (PTX_CONTEXT)pUrb->context;
 pAd = pPsPollContext->pAd;
 Status = pUrb->status;

 pObj = (POS_COOKIE) pAd->OS_Cookie;
 pObj->pspoll_frame_complete_task.data = (unsigned long)pUrb;
 tasklet_hi_schedule(&pObj->pspoll_frame_complete_task);
}
