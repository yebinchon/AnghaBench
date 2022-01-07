
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int udelay (unsigned long) ;
 unsigned long w1_delay_parm ;

__attribute__((used)) static void w1_delay(unsigned long tm)
{
 udelay(tm * w1_delay_parm);
}
