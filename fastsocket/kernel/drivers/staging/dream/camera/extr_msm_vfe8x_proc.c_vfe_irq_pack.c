
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vfe_irqenable {int violationIrq; int axiErrorIrq; int asyncTimer3Irq; int asyncTimer2Irq; int asyncTimer1Irq; int asyncTimer0Irq; int syncTimer2Irq; int syncTimer1Irq; int syncTimer0Irq; int awbOverflowIrq; int afOverflowIrq; int busOverflowIrq; int viewIrq; int encIrq; int histPingpongIrq; int awbPingpongIrq; int afPingpongIrq; int rdPingpongIrq; int viewCbcrPingpongIrq; int viewYPingpongIrq; int encCbcrPingpongIrq; int encYPingpongIrq; int resetAckIrq; int regUpdateIrq; int ceIrq; int camifOverflowIrq; int camifEpoch2Irq; int camifEpoch1Irq; int camifEofIrq; int camifEolIrq; int camifSofIrq; int camifErrorIrq; } ;
struct vfe_interrupt_mask {int violationIrq; int axiErrorIrq; int asyncTimer3Irq; int asyncTimer2Irq; int asyncTimer1Irq; int asyncTimer0Irq; int syncTimer2Irq; int syncTimer1Irq; int syncTimer0Irq; int awbOverflowIrq; int afOverflowIrq; int busOverflowIrq; int viewIrq; int encIrq; int histPingpongIrq; int awbPingpongIrq; int afPingpongIrq; int rdPingpongIrq; int viewCbcrPingpongIrq; int viewYPingpongIrq; int encCbcrPingpongIrq; int encYPingpongIrq; int resetAckIrq; int regUpdateIrq; int ceIrq; int camifOverflowIrq; int camifEpoch2Irq; int camifEpoch1Irq; int camifEofIrq; int camifEolIrq; int camifSofIrq; int camifErrorIrq; } ;
typedef int packedData ;


 int memset (struct vfe_irqenable*,int ,int) ;

__attribute__((used)) static uint32_t vfe_irq_pack(struct vfe_interrupt_mask data)
{
 struct vfe_irqenable packedData;

 memset(&packedData, 0, sizeof(packedData));

 packedData.camifErrorIrq = data.camifErrorIrq;
 packedData.camifSofIrq = data.camifSofIrq;
 packedData.camifEolIrq = data.camifEolIrq;
 packedData.camifEofIrq = data.camifEofIrq;
 packedData.camifEpoch1Irq = data.camifEpoch1Irq;
 packedData.camifEpoch2Irq = data.camifEpoch2Irq;
 packedData.camifOverflowIrq = data.camifOverflowIrq;
 packedData.ceIrq = data.ceIrq;
 packedData.regUpdateIrq = data.regUpdateIrq;
 packedData.resetAckIrq = data.resetAckIrq;
 packedData.encYPingpongIrq = data.encYPingpongIrq;
 packedData.encCbcrPingpongIrq = data.encCbcrPingpongIrq;
 packedData.viewYPingpongIrq = data.viewYPingpongIrq;
 packedData.viewCbcrPingpongIrq = data.viewCbcrPingpongIrq;
 packedData.rdPingpongIrq = data.rdPingpongIrq;
 packedData.afPingpongIrq = data.afPingpongIrq;
 packedData.awbPingpongIrq = data.awbPingpongIrq;
 packedData.histPingpongIrq = data.histPingpongIrq;
 packedData.encIrq = data.encIrq;
 packedData.viewIrq = data.viewIrq;
 packedData.busOverflowIrq = data.busOverflowIrq;
 packedData.afOverflowIrq = data.afOverflowIrq;
 packedData.awbOverflowIrq = data.awbOverflowIrq;
 packedData.syncTimer0Irq = data.syncTimer0Irq;
 packedData.syncTimer1Irq = data.syncTimer1Irq;
 packedData.syncTimer2Irq = data.syncTimer2Irq;
 packedData.asyncTimer0Irq = data.asyncTimer0Irq;
 packedData.asyncTimer1Irq = data.asyncTimer1Irq;
 packedData.asyncTimer2Irq = data.asyncTimer2Irq;
 packedData.asyncTimer3Irq = data.asyncTimer3Irq;
 packedData.axiErrorIrq = data.axiErrorIrq;
 packedData.violationIrq = data.violationIrq;

 return *((uint32_t *)&packedData);
}
