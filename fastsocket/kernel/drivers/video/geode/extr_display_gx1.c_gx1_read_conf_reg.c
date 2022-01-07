
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CONFIG_CCR3 ;
 int CONFIG_CCR3_MAPEN ;
 int gx1_conf_reg_lock ;
 int inb (int) ;
 int outb (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u8 gx1_read_conf_reg(u8 reg)
{
 u8 val, ccr3;
 unsigned long flags;

 spin_lock_irqsave(&gx1_conf_reg_lock, flags);

 outb(CONFIG_CCR3, 0x22);
 ccr3 = inb(0x23);
 outb(CONFIG_CCR3, 0x22);
 outb(ccr3 | CONFIG_CCR3_MAPEN, 0x23);
 outb(reg, 0x22);
 val = inb(0x23);
 outb(CONFIG_CCR3, 0x22);
 outb(ccr3, 0x23);

 spin_unlock_irqrestore(&gx1_conf_reg_lock, flags);

 return val;
}
