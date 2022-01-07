
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int last_recbank; int rec_sample_size; int rec_channels; int rec_sample_rate; scalar_t__ base; int lock; scalar_t__ io; scalar_t__ DARQ; } ;
typedef scalar_t__ LPDAQD ;
typedef int DWORD ;


 int DAQDS__size ;
 scalar_t__ DAQDS_wChannels ;
 scalar_t__ DAQDS_wFlags ;
 scalar_t__ DAQDS_wFormat ;
 scalar_t__ DAQDS_wIntMsg ;
 scalar_t__ DAQDS_wSampleRate ;
 scalar_t__ DAQDS_wSampleSize ;
 scalar_t__ DAQDS_wSize ;
 scalar_t__ DAQDS_wStart ;
 scalar_t__ DARQ_DATA_BUFF ;
 int DAR_BUFF_SIZE ;
 int HIMT_RECORD_DONE ;
 int HPBLKSEL_0 ;
 int HPBLKSEL_1 ;
 scalar_t__ HP_BLKS ;
 scalar_t__ JQS_wHead ;
 scalar_t__ JQS_wTail ;
 int PCTODSP_BASED (int ) ;
 int PCTODSP_OFFSET (int) ;
 TYPE_1__ dev ;
 int memset_io (scalar_t__,int ,int) ;
 int msnd_outb (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void reset_record_queue(void)
{
 int n;
 LPDAQD lpDAQ;
 unsigned long flags;

 dev.last_recbank = 2;
 writew(PCTODSP_OFFSET(0 * DAQDS__size), dev.DARQ + JQS_wHead);
 writew(PCTODSP_OFFSET(dev.last_recbank * DAQDS__size), dev.DARQ + JQS_wTail);


 spin_lock_irqsave(&dev.lock, flags);
 msnd_outb(HPBLKSEL_1, dev.io + HP_BLKS);
 memset_io(dev.base, 0, DAR_BUFF_SIZE * 3);
 msnd_outb(HPBLKSEL_0, dev.io + HP_BLKS);
 spin_unlock_irqrestore(&dev.lock, flags);

 for (n = 0, lpDAQ = dev.base + DARQ_DATA_BUFF; n < 3; ++n, lpDAQ += DAQDS__size) {
  writew(PCTODSP_BASED((DWORD)(DAR_BUFF_SIZE * n)) + 0x4000, lpDAQ + DAQDS_wStart);
  writew(DAR_BUFF_SIZE, lpDAQ + DAQDS_wSize);
  writew(1, lpDAQ + DAQDS_wFormat);
  writew(dev.rec_sample_size, lpDAQ + DAQDS_wSampleSize);
  writew(dev.rec_channels, lpDAQ + DAQDS_wChannels);
  writew(dev.rec_sample_rate, lpDAQ + DAQDS_wSampleRate);
  writew(HIMT_RECORD_DONE * 0x100 + n, lpDAQ + DAQDS_wIntMsg);
  writew(n, lpDAQ + DAQDS_wFlags);
 }
}
