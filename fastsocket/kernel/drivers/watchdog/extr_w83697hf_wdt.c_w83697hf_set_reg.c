
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int W83697HF_EFDR ;
 int W83697HF_EFIR ;
 int outb_p (unsigned char,int ) ;

__attribute__((used)) static void w83697hf_set_reg(unsigned char reg, unsigned char data)
{
 outb_p(reg, W83697HF_EFIR);
 outb_p(data, W83697HF_EFDR);
}
