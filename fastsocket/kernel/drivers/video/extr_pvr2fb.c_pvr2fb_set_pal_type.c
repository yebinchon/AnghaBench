
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2fb_par {scalar_t__ mmio_base; } ;
struct TYPE_2__ {scalar_t__ par; } ;


 TYPE_1__* fb_info ;
 int fb_writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void pvr2fb_set_pal_type(unsigned int type)
{
 struct pvr2fb_par *par = (struct pvr2fb_par *)fb_info->par;

 fb_writel(type, par->mmio_base + 0x108);
}
