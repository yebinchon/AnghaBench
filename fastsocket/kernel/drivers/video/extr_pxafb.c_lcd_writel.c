
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxafb_info {scalar_t__ mmio_base; } ;


 int __raw_writel (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void
lcd_writel(struct pxafb_info *fbi, unsigned int off, unsigned long val)
{
 __raw_writel(val, fbi->mmio_base + off);
}
