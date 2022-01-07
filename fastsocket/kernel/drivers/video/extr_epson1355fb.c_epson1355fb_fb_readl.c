
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int fb_readw (int const*) ;

__attribute__((used)) static inline unsigned long epson1355fb_fb_readl(const unsigned long *a)
{
 const u16 *p = (u16 *) a;
 u16 l = fb_readw(p);
 u16 h = fb_readw(p + 1);

 return (h << 16) | l;
}
