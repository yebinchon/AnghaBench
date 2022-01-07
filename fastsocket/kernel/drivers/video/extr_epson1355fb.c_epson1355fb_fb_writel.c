
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u16 ;


 int fb_writew (unsigned long,unsigned long*) ;

__attribute__((used)) static inline void epson1355fb_fb_writel(unsigned long v, unsigned long *a)
{
 u16 *p = (u16 *) a;
 u16 l = v & 0xffff;
 u16 h = v >> 16;

 fb_writew(l, p);
 fb_writew(h, p + 1);
}
