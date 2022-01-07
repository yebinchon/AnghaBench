
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SBC8360_ENABLE ;
 int msleep_interruptible (int) ;
 int outb (int,int ) ;
 int wd_multiplier ;

__attribute__((used)) static void sbc8360_activate(void)
{

 outb(0x0A, SBC8360_ENABLE);
 msleep_interruptible(100);
 outb(0x0B, SBC8360_ENABLE);
 msleep_interruptible(100);

 outb(wd_multiplier, SBC8360_ENABLE);
 msleep_interruptible(100);

}
