
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct leo_par {TYPE_1__* ld_ss1; } ;
struct fb_info {scalar_t__ par; } ;
struct TYPE_2__ {int ss1_misc; } ;


 int LEO_SS1_MISC_ENABLE ;
 int leo_switch_from_graph (struct fb_info*) ;
 int sbus_readl (int *) ;
 int sbus_writel (int ,int *) ;

__attribute__((used)) static void leo_init_hw(struct fb_info *info)
{
 struct leo_par *par = (struct leo_par *) info->par;
 u32 val;

 val = sbus_readl(&par->ld_ss1->ss1_misc);
 val |= LEO_SS1_MISC_ENABLE;
 sbus_writel(val, &par->ld_ss1->ss1_misc);

 leo_switch_from_graph(info);
}
