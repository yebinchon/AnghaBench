
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mod_status {int fls; } ;


 int USU_MOD_FL_PRESENT ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mod_status* stat ;
 int usu_lock ;

void usb_usual_clear_present(int type)
{
 struct mod_status *st;
 unsigned long flags;

 if (type <= 0 || type >= 3)
  return;
 st = &stat[type];
 spin_lock_irqsave(&usu_lock, flags);
 st->fls &= ~USU_MOD_FL_PRESENT;
 spin_unlock_irqrestore(&usu_lock, flags);
}
