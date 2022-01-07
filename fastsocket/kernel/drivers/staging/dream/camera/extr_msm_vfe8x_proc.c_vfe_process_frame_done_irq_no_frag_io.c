
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ hwRegPingAddress; scalar_t__ hwRegPongAddress; } ;
struct TYPE_4__ {scalar_t__ hwRegPingAddress; scalar_t__ hwRegPongAddress; } ;
struct vfe_output_path_combo {int cbcrStatusBit; TYPE_2__ cbcrPath; TYPE_1__ yPath; } ;
struct TYPE_6__ {scalar_t__ vfebase; } ;


 int CDBG (char*,int) ;
 scalar_t__ VFE_BUS_PINGPONG_STATUS ;
 TYPE_3__* ctrl ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void vfe_process_frame_done_irq_no_frag_io(
 struct vfe_output_path_combo *in, uint32_t *pNextAddr,
 uint32_t *pdestRenderAddr)
{
 uint32_t busPingPongStatus;
 uint32_t tempAddress;


 busPingPongStatus =
  readl(ctrl->vfebase + VFE_BUS_PINGPONG_STATUS);

 CDBG("hardware status is 0x%x\n", busPingPongStatus);



 busPingPongStatus = busPingPongStatus & (1<<(in->cbcrStatusBit));


 if (busPingPongStatus == 0) {



  tempAddress = readl(in->yPath.hwRegPongAddress);

  CDBG("pong 1 addr = 0x%x\n", tempAddress);
  *pdestRenderAddr++ = tempAddress;

  tempAddress = readl(in->cbcrPath.hwRegPongAddress);

  CDBG("pong 2 addr = 0x%x\n", tempAddress);
  *pdestRenderAddr = tempAddress;


  writel(*pNextAddr++, in->yPath.hwRegPongAddress);
  writel(*pNextAddr, in->cbcrPath.hwRegPongAddress);
 } else {



  tempAddress = readl(in->yPath.hwRegPingAddress);
  CDBG("ping 1 addr = 0x%x\n", tempAddress);
  *pdestRenderAddr++ = tempAddress;
  tempAddress = readl(in->cbcrPath.hwRegPingAddress);

  CDBG("ping 2 addr = 0x%x\n", tempAddress);
  *pdestRenderAddr = tempAddress;


  writel(*pNextAddr++, in->yPath.hwRegPingAddress);
  CDBG("NextAddress = 0x%x\n", *pNextAddr);
  writel(*pNextAddr, in->cbcrPath.hwRegPingAddress);
 }
}
