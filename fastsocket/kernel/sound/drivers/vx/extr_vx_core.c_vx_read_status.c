
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_rmh {int DspStat; scalar_t__ LgStat; int* Stat; } ;
struct vx_core {int dummy; } ;


 int EINVAL ;
 int IRQ_MESS_WRITE_END ;
 int IRQ_MESS_WRITE_NEXT ;

 int RMH_SSIZE_FIXED ;

 int RXH ;
 int RXL ;
 int RXM ;
 int SIZE_MAX_STATUS ;
 scalar_t__ snd_BUG_ON (int) ;
 int vx_inb (struct vx_core*,int ) ;
 int vx_send_irq_dsp (struct vx_core*,int ) ;
 int vx_transfer_end (struct vx_core*,int ) ;
 int vx_wait_for_rx_full (struct vx_core*) ;

__attribute__((used)) static int vx_read_status(struct vx_core *chip, struct vx_rmh *rmh)
{
 int i, err, val, size;


 if (rmh->DspStat == RMH_SSIZE_FIXED && rmh->LgStat == 0)
  return 0;




 err = vx_wait_for_rx_full(chip);
 if (err < 0)
  return err;


 val = vx_inb(chip, RXH) << 16;
 val |= vx_inb(chip, RXM) << 8;
 val |= vx_inb(chip, RXL);


 switch (rmh->DspStat) {
 case 129:
  size = val & 0xff;
  rmh->Stat[0] = val & 0xffff00;
  rmh->LgStat = size + 1;
  break;
 case 128:

  rmh->Stat[0] = val;
  size = 0;
  while (val) {
   if (val & 0x01)
    size++;
   val >>= 1;
  }
  rmh->LgStat = size + 1;
  break;
 default:

  size = rmh->LgStat;
  rmh->Stat[0] = val;
  size--;
  break;
        }

 if (size < 1)
  return 0;
 if (snd_BUG_ON(size > SIZE_MAX_STATUS))
  return -EINVAL;

 for (i = 1; i <= size; i++) {

  err = vx_send_irq_dsp(chip, IRQ_MESS_WRITE_NEXT);
  if (err < 0)
   return err;

  err = vx_wait_for_rx_full(chip);
  if (err < 0)
   return err;
  rmh->Stat[i] = vx_inb(chip, RXH) << 16;
  rmh->Stat[i] |= vx_inb(chip, RXM) << 8;
  rmh->Stat[i] |= vx_inb(chip, RXL);
 }

 return vx_transfer_end(chip, IRQ_MESS_WRITE_END);
}
