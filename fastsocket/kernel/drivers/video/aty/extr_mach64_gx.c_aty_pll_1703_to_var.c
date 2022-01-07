
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int period_in_ps; } ;
union aty_pll {TYPE_1__ ics2595; } ;
typedef int u32 ;
struct fb_info {int dummy; } ;



__attribute__((used)) static u32 aty_pll_1703_to_var(const struct fb_info *info,
          const union aty_pll *pll)
{
 return (pll->ics2595.period_in_ps);
}
