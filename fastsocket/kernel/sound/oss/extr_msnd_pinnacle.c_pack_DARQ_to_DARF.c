
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_2__ {scalar_t__ io; scalar_t__ base; int DARF; scalar_t__ DARQ; } ;
typedef scalar_t__ LPDAQD ;


 int DAQDS__size ;
 scalar_t__ DAQDS_wSize ;
 scalar_t__ DARQ_DATA_BUFF ;
 int DAR_BUFF_SIZE ;
 int HPBLKSEL_0 ;
 int HPBLKSEL_1 ;
 scalar_t__ HP_BLKS ;
 scalar_t__ JQS_wHead ;
 scalar_t__ JQS_wSize ;
 scalar_t__ JQS_wTail ;
 int PCTODSP_OFFSET (int) ;
 TYPE_1__ dev ;
 int msnd_fifo_write_io (int *,scalar_t__,int) ;
 int msnd_outb (int ,scalar_t__) ;
 int readw (scalar_t__) ;
 int udelay (int) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static __inline__ int pack_DARQ_to_DARF(register int bank)
{
 register int size, timeout = 3;
 register WORD wTmp;
 LPDAQD DAQD;


 wTmp = readw(dev.DARQ + JQS_wTail) + PCTODSP_OFFSET(DAQDS__size);
 if (wTmp > readw(dev.DARQ + JQS_wSize))
  wTmp = 0;
 while (wTmp == readw(dev.DARQ + JQS_wHead) && timeout--)
  udelay(1);
 writew(wTmp, dev.DARQ + JQS_wTail);


 DAQD = bank * DAQDS__size + dev.base + DARQ_DATA_BUFF;


 size = readw(DAQD + DAQDS_wSize);



 msnd_outb(HPBLKSEL_1, dev.io + HP_BLKS);
 msnd_fifo_write_io(
  &dev.DARF,
  dev.base + bank * DAR_BUFF_SIZE,
  size);
 msnd_outb(HPBLKSEL_0, dev.io + HP_BLKS);

 return 1;
}
