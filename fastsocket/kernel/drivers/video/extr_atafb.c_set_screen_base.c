
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char bas_hi; unsigned char bas_md; unsigned char bas_lo; } ;


 TYPE_1__ shifter ;
 unsigned long virt_to_phys (void*) ;

__attribute__((used)) static void set_screen_base(void *s_base)
{
 unsigned long addr;

 addr = virt_to_phys(s_base);

 shifter.bas_hi = (unsigned char)((addr & 0xff0000) >> 16);
 shifter.bas_md = (unsigned char)((addr & 0x00ff00) >> 8);
 shifter.bas_lo = (unsigned char)(addr & 0x0000ff);
}
