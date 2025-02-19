
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAXINEFB_IMS332_ADDRESS ;

unsigned int maxinefb_ims332_read_register(int regno)
{
 register unsigned char *regs = (char *) MAXINEFB_IMS332_ADDRESS;
 unsigned char *rptr;
 register unsigned int j, k;

 rptr = regs + 0x80000 + (regno << 4);
 j = *((volatile unsigned short *) rptr);
 k = *((volatile unsigned short *) regs);

 return (j & 0xffff) | ((k & 0xff00) << 8);
}
