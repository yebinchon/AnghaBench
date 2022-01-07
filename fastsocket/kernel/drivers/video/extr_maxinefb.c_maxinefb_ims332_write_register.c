
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAXINEFB_IMS332_ADDRESS ;

void maxinefb_ims332_write_register(int regno, register unsigned int val)
{
 register unsigned char *regs = (char *) MAXINEFB_IMS332_ADDRESS;
 unsigned char *wptr;

 wptr = regs + 0xa0000 + (regno << 4);
 *((volatile unsigned int *) (regs)) = (val >> 8) & 0xff00;
 *((volatile unsigned short *) (wptr)) = val;
}
