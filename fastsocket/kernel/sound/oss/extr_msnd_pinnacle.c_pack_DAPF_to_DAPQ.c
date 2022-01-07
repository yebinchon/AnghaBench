
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_3__ {scalar_t__ DAPQ; scalar_t__ base; int DAPF; int lock; } ;
typedef scalar_t__ LPDAQD ;


 scalar_t__ DAPQ_DATA_BUFF ;
 int DAP_BUFF_SIZE ;
 int DAQDS__size ;
 scalar_t__ DAQDS_wSize ;
 int HDEX_PLAY_START ;
 scalar_t__ JQS_wHead ;
 scalar_t__ JQS_wTail ;
 int PCTODSP_OFFSET (int) ;
 TYPE_1__ dev ;
 int msnd_fifo_read_io (int *,scalar_t__,int) ;
 int msnd_send_dsp_cmd (TYPE_1__*,int ) ;
 int readw (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static __inline__ int pack_DAPF_to_DAPQ(register int start)
{
 register WORD DAPQ_tail;
 register int protect = start, nbanks = 0;
 LPDAQD DAQD;

 DAPQ_tail = readw(dev.DAPQ + JQS_wTail);
 while (DAPQ_tail != readw(dev.DAPQ + JQS_wHead) || start) {
  register int bank_num = DAPQ_tail / PCTODSP_OFFSET(DAQDS__size);
  register int n;
  unsigned long flags;


  if (protect) {

   spin_lock_irqsave(&dev.lock, flags);
   n = msnd_fifo_read_io(
    &dev.DAPF,
    dev.base + bank_num * DAP_BUFF_SIZE,
    DAP_BUFF_SIZE);
   spin_unlock_irqrestore(&dev.lock, flags);
  } else {
   n = msnd_fifo_read_io(
    &dev.DAPF,
    dev.base + bank_num * DAP_BUFF_SIZE,
    DAP_BUFF_SIZE);
  }
  if (!n)
   break;

  if (start)
   start = 0;


  DAQD = bank_num * DAQDS__size + dev.base + DAPQ_DATA_BUFF;


  writew(n, DAQD + DAQDS_wSize);
  ++nbanks;


  DAPQ_tail = (++bank_num % 3) * PCTODSP_OFFSET(DAQDS__size);
  writew(DAPQ_tail, dev.DAPQ + JQS_wTail);

  msnd_send_dsp_cmd(&dev, HDEX_PLAY_START);
 }
 return nbanks;
}
