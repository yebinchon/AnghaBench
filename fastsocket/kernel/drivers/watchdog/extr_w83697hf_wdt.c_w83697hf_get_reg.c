
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int W83697HF_EFDR ;
 int W83697HF_EFIR ;
 unsigned char inb_p (int ) ;
 int outb_p (unsigned char,int ) ;

__attribute__((used)) static unsigned char w83697hf_get_reg(unsigned char reg)
{
 outb_p(reg, W83697HF_EFIR);
 return inb_p(W83697HF_EFDR);
}
