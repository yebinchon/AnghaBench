
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int rridresult ;
struct TYPE_10__ {int rridresp; } ;
struct TYPE_11__ {int rid; } ;
struct TYPE_12__ {TYPE_2__ rridreq; } ;
struct TYPE_13__ {scalar_t__ state; int usercb_data; int (* usercb ) (int *,TYPE_5__*,int ) ;TYPE_1__ inbuf; TYPE_3__ outbuf; } ;
typedef TYPE_4__ hfa384x_usbctlx_t ;
typedef int hfa384x_t ;
struct TYPE_14__ {int rid; } ;
typedef TYPE_5__ hfa384x_rridresult_t ;


 scalar_t__ CTLX_COMPLETE ;
 int le16_to_cpu (int ) ;
 int memset (TYPE_5__*,int ,int) ;
 int stub1 (int *,TYPE_5__*,int ) ;
 int usbctlx_get_rridresult (int *,TYPE_5__*) ;

__attribute__((used)) static void hfa384x_cb_rrid(hfa384x_t *hw, const hfa384x_usbctlx_t *ctlx)
{
 if (ctlx->usercb != ((void*)0)) {
  hfa384x_rridresult_t rridresult;

  if (ctlx->state != CTLX_COMPLETE) {
   memset(&rridresult, 0, sizeof(rridresult));
   rridresult.rid = le16_to_cpu(ctlx->outbuf.rridreq.rid);
  } else {
   usbctlx_get_rridresult(&ctlx->inbuf.rridresp,
            &rridresult);
  }

  ctlx->usercb(hw, &rridresult, ctlx->usercb_data);
 }
}
