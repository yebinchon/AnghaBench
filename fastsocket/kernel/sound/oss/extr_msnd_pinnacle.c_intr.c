
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
typedef int WORD ;
struct TYPE_2__ {scalar_t__ DSPQ; scalar_t__ pwDSPQData; scalar_t__ io; } ;


 scalar_t__ HP_RXL ;
 int IRQ_HANDLED ;
 scalar_t__ JQS_wHead ;
 scalar_t__ JQS_wSize ;
 scalar_t__ JQS_wTail ;
 TYPE_1__ dev ;
 int eval_dsp_msg (int) ;
 int msnd_inb (scalar_t__) ;
 int readw (scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t intr(int irq, void *dev_id)
{

 msnd_inb(dev.io + HP_RXL);


 while (readw(dev.DSPQ + JQS_wTail) != readw(dev.DSPQ + JQS_wHead)) {
  register WORD wTmp;

  eval_dsp_msg(readw(dev.pwDSPQData + 2*readw(dev.DSPQ + JQS_wHead)));

  if ((wTmp = readw(dev.DSPQ + JQS_wHead) + 1) > readw(dev.DSPQ + JQS_wSize))
   writew(0, dev.DSPQ + JQS_wHead);
  else
   writew(wTmp, dev.DSPQ + JQS_wHead);
 }
 return IRQ_HANDLED;
}
