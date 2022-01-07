
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct vfe_cmd_output_ack {int * chromabufaddr; int * ybufaddr; } ;
struct TYPE_3__ {scalar_t__ fragCount; int ackPending; int * nextFrameAddrBuf; } ;
struct TYPE_4__ {TYPE_1__ viewPath; } ;


 int FALSE ;
 TYPE_2__* ctrl ;

void vfe_output1_ack(struct vfe_cmd_output_ack *in)
{
 const uint32_t *psrc;
 uint32_t *pdest;
 uint8_t i;

 pdest = ctrl->viewPath.nextFrameAddrBuf;

 psrc = in->ybufaddr;
 for (i = 0; i < ctrl->viewPath.fragCount; i++)
  *pdest++ = *psrc++;

 psrc = in->chromabufaddr;
 for (i = 0; i < ctrl->viewPath.fragCount; i++)
  *pdest++ = *psrc++;

 ctrl->viewPath.ackPending = FALSE;
}
