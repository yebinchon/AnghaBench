
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CT_COMPOSITE ;
 int CT_RGB ;
 int PCTRA ;
 int PDTRA ;
 int VOUTC ;
 int cable_type ;
 int fb_readl (int ) ;
 int fb_readw (int ) ;
 int fb_writel (int,int ) ;

__attribute__((used)) static int pvr2_init_cable(void)
{
 if (cable_type < 0) {
  fb_writel((fb_readl(PCTRA) & 0xfff0ffff) | 0x000a0000,
                   PCTRA);
  cable_type = (fb_readw(PDTRA) >> 8) & 3;
 }




 if (cable_type == CT_COMPOSITE)
  fb_writel(3 << 8, VOUTC);
 else if (cable_type == CT_RGB)
  fb_writel(1 << 9, VOUTC);
 else
  fb_writel(0, VOUTC);

 return cable_type;
}
