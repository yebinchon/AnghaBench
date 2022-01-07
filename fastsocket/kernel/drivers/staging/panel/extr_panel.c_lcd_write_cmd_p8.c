
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* e; void* rw; void* rs; } ;


 void* BIT_CLR ;
 void* BIT_SET ;
 TYPE_1__ bits ;
 int pprt ;
 int pprt_lock ;
 int set_ctrl_bits () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udelay (int) ;
 int w_dtr (int ,int) ;

__attribute__((used)) static void lcd_write_cmd_p8(int cmd)
{
 spin_lock(&pprt_lock);

 w_dtr(pprt, cmd);
 udelay(20);

 bits.e = BIT_SET;
 bits.rs = BIT_CLR;
 bits.rw = BIT_CLR;
 set_ctrl_bits();

 udelay(40);

 bits.e = BIT_CLR;
 set_ctrl_bits();

 udelay(120);
 spin_unlock(&pprt_lock);
}
