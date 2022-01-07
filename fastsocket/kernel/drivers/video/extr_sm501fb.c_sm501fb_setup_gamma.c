
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501fb_info {scalar_t__ regs; } ;


 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void sm501fb_setup_gamma(struct sm501fb_info *fbi,
    unsigned long palette)
{
 unsigned long value = 0;
 int offset;


 for (offset = 0; offset < 256 * 4; offset += 4) {
  writel(value, fbi->regs + palette + offset);
  value += 0x010101;
 }
}
